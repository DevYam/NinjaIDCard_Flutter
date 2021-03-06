import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyNinja(),
  ));
}

class MyNinja extends StatefulWidget {
  @override
  _MyNinjaState createState() => _MyNinjaState();
}

class _MyNinjaState extends State<MyNinja> {


  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
        ),
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Center(
              child: CircleAvatar(
               //  I have used ClipOval widgets as child of
               // CircleAvatar because my Image was cropped
              child: ClipOval(
                child: Image.asset('assets/divyam.jpg'),
              ),
                radius: 60,
                backgroundColor: Colors.grey[900],
              ),
            ),

            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Divyam Kumar',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10,),
                Text(
                  'divyamkumarsingh@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,

                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

