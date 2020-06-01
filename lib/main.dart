import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NodeTechCard()
));

class NodeTechCard extends StatefulWidget {
  @override
  _NodeTechCardState createState() => _NodeTechCardState();
}

class _NodeTechCardState extends State<NodeTechCard> {
  int techLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('NodeTech ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/avatar.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.2,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Akshay',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.2,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT TECH LEVEL',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.2,
                  fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$techLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.2,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  '+91-74309-77333',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'akshoy@nodetech.in',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            techLevel++;
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}


