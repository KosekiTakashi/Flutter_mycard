import 'package:flutter/material.dart';

void main() {
  runApp(MyPages());
}

class MyPages extends StatefulWidget {
  @override
  _MyPagesState createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  String accountName = '↑  Touch!  ↑';

  changeColor({String account}) {
    if (account == '@takashi50350591') {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.indigo[700],
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1230886916955885569/mEbhe7EW_400x400.jpg')),
              Text('KosekiTakashi',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white)),
              Text(
                'Stuedent',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                  height: 20,
                  width: 250,
                  child: Divider(color: Colors.blue[900])),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue[900]),
                  title: Text('123 456 789',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blue[900],
                          fontSize: 20.0)),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue[900]),
                  title: Text('test@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blue[900],
                          fontSize: 20.0)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://image.flaticon.com/icons/png/512/25/25657.png')),
                      onPressed: () {
                        setState(() {
                          accountName = 'https://github.com/KosekiTakashi';
                        });
                        print('KosekiTakashi');
                      },
                    ),
                    FlatButton(
                      child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://dohack.jp/wp-content/uploads/2018/07/e87144.jpg')),
                      onPressed: () {
                        setState(() {
                          accountName = '@takashi50350591';
                        });
                        print('@takashi50350591');
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: changeColor(account: accountName),
                padding: EdgeInsets.all(7.5),
                child: Text(accountName,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ))),
    );
  }
}
