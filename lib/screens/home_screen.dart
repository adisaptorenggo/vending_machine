import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.only(
          bottom: 15,
          top: 15,
          right: 35,
          left: 35
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Cash'
                    ),
                  ),
                  Container(
                    child: Text(
                      '5000'
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: RaisedButton(
                                  child: Text('Biskuit'),
                                  elevation: 5,
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Container(
                                child: Text(
                                  '  : 10',
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: RaisedButton(
                                  child: Text('Biskuit'),
                                  elevation: 5,
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Container(
                                child: Text(
                                  '  : 10',
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: RaisedButton(
                                  child: Text('Biskuit'),
                                  elevation: 5,
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Container(
                                child: Text(
                                  '  : 10',
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: RaisedButton(
                                  child: Text('Biskuit'),
                                  elevation: 5,
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Container(
                                child: Text(
                                  '  : 10',
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: RaisedButton(
                                  child: Text('Biskuit'),
                                  elevation: 5,
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Container(
                                child: Text(
                                  '  : 10',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: RaisedButton(
                              child: Text('Masukkan Uang'),
                              elevation: 5,
                              onPressed: () {
                              },
                            ),
                          ),
                          Container(
                            child: RaisedButton(
                              child: Text('Pengembalian Uang'),
                              elevation: 5,
                              onPressed: () {
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Masukkan Stok'),
                elevation: 5,
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
