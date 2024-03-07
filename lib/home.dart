import 'package:flutter/material.dart';
import 'package:kamus_mobile/page_list_kamus.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.teal.shade100,
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Kamus English - Indonesia',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'KamusKu merupakan aplikasi Kamus English Indonesia yang menampilkan List dan Detail Kosa Kata.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                // Image to the right
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Image.asset(
                    'images/bg.png',
                    width: 200,
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Card(
              color: Colors.indigoAccent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageListKamus()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      'Kosa Kata',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
