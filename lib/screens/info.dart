import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final assetPath, servicename, erviuser, ervidesc;

  Info({this.assetPath, this.servicename, this.erviuser, this.ervidesc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: Text('Service Provider',
            style: TextStyle(fontSize: 20, color: Colors.blue[900])),
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 5),
                child: Image.asset(assetPath, height: 200),
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 170)),
                  Icon(Icons.message),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 10),
                    child: Container(
                      height: 2.0,
                      width: 380.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    servicename,
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 70)),
                      Text(
                        ervidesc,
                        style: TextStyle(
                            fontSize: 17, color: Colors.lightBlue[900]),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text(
              ' DESCRIPTION OF THE DRIVER, DESCRIPTION OF THE DRIVER, DESCRIPTION OF THE\n DRIVER, DESCRIPTION OF THE DRIVER, DESCRIPTION OF THE DRIVER, DESCRIPTION\n OF THE DRIVER, DESCRIPTION OF THE DRIVER',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10)),
            Text('Reviews and Feedbacks:',
                style: TextStyle(fontSize: 15, color: Colors.blueGrey)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Container(
                height: 2.0,
                width: 350.0,
                color: Colors.blueAccent,
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text('4.0',
                style: TextStyle(
                    fontSize: 20, backgroundColor: Colors.greenAccent[100])),
            Text(
              ' Feedback Feedback Feedback Feedback\n Feedback Feedback',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text('4.0',
                style: TextStyle(
                    fontSize: 20, backgroundColor: Colors.greenAccent[100])),
            Text(
              ' Feedback Feedback Feedback Feedback\n Feedback Feedback',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text('4.0',
                style: TextStyle(
                    fontSize: 20, backgroundColor: Colors.greenAccent[100])),
            Text(
              ' Feedback Feedback Feedback Feedback\n Feedback Feedback',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
      ]),
    );
  }
}
