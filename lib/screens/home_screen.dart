import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sign_in_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(35),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.green,
                    offset: new Offset(6.0, 6.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Name : Tanish Parmar\nRoll No : 1\nBatche : Batch-1\nBranch : IT\n',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Table(
                    defaultColumnWidth: FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(children: [
                        Column(children: [
                          Text('Subject', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: [
                          Text('Marks', style: TextStyle(fontSize: 20.0))
                        ]),
                        // Column(children: [
                        //   Text('Review', style: TextStyle(fontSize: 20.0))
                        // ]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Engineering Mathematics')]),
                        Column(children: [Text('76/80')]),
                        // Column(children: [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Computer Networks')]),
                        Column(children: [Text('66/80')]),
                        // Column(children: [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Operating Systems')]),
                        Column(children: [Text('53/80')]),
                        // Column(children: [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Automata Theory')]),
                        Column(children: [Text('76/80')]),
                        // Column(children: [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Computer Architecture')]),
                        Column(children: [Text('66/80')]),
                        // Column(children: [Text('5*')]),
                      ]),
                    ],
                  ),
                  ElevatedButton(
                      child: Text('Logout'),
                      onPressed: () {
                        FirebaseAuth.instance.signOut().then((value) {
                          print("Logged out");
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        });
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
