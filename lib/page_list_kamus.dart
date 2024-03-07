import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kamus_mobile/page_detail_kamus.dart';
import 'models/model_kamus.dart';

class PageListKamus extends StatefulWidget {
  const PageListKamus({super.key});

  @override
  State<PageListKamus> createState() => _PageListKamusState();
}

class _PageListKamusState extends State<PageListKamus> {
  TextEditingController _searchController = TextEditingController();
  Future<List<Datum>?>? _kamusFuture;
  String _searchTerm = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    _kamusFuture = getKamus();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<List<Datum>?> getKamus({String searchTerm = ''}) async {
    try {
      http.Response res = await http.get(Uri.parse('http://192.168.1.11/kamus/getKamus.php'));
      List<Datum> allData = modelKamusFromJson(res.body).data;
      if (searchTerm.isNotEmpty) {
        allData = allData.where((datum) =>
        datum.istilah.toLowerCase().contains(searchTerm.toLowerCase()) ||
            datum.arti.toLowerCase().contains(searchTerm.toLowerCase())).toList();
      }
      return allData;
    } catch (e) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString()))
        );
      });
      return null;
    }
  }

  void _onSearchChanged() {
    print('Search term : ${_searchController.text}');
    setState(() {
      _searchTerm = _searchController.text;
      _kamusFuture = getKamus(searchTerm: _searchTerm);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          _searchController.text.isNotEmpty
              ? IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              _onSearchChanged();
            },
          )
              : Container(),
        ],
      ),
      body: FutureBuilder(
        future: _kamusFuture,
        builder: (BuildContext context, AsyncSnapshot<List<Datum>?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.orange),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                Datum? data = snapshot.data?[index];
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PageDetailKamus(data)));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              "${data?.istilah}",
                              style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${data?.arti}",
                              maxLines: 2,
                              style: TextStyle(fontSize: 11, color: Colors.black54, fontWeight: FontWeight.w100),
                            ),
                            trailing: Icon(Icons.ad_units_sharp, color: Colors.lightBlue),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Center(child: Text("No data found"));
          }
        },
      ),
    );
  }
}
