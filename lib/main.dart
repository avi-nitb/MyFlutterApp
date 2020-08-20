import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int codingLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('My Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 50.0,
              ),
            ),

            Divider(
              height: 70.0,
              color: Colors.grey[900],
            ),
            Text('Name',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),),
            Text('Avinash Shukla',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blue,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
              ),),

            SizedBox(height: 20.0,),

            Text('Designation',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),),
            Text('Senior Software Developer',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blue,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 20.0),
            Text('Coding Skill Level',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),),
            Text('$codingLevel',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blue,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.email,
                  color: Colors.amber,
                ),
                SizedBox(width: 10.0),

                Text('avishukla.iet@gmail.com',
                style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),)
              ],
            ),

            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon( Icons.phone_android,
                color: Colors.amber,),
                SizedBox(width: 10.0,),

                Text('+91-9716848155',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            codingLevel += 1;
          });
        },
        child: Icon(Icons.add,
        color: Colors.deepOrangeAccent,),
      ),
    );
  }
}
