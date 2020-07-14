import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final String message;
  const Loading({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = message.isEmpty
        ? Center(
            child: Container(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
    return IgnorePointer(
      ignoring: false,
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 100),
        curve: Curves.decelerate,
        padding: EdgeInsets.all(0),
        child: Container(
          color: Colors.black26,
          child: Center(
            child: Container(
              color: Colors.black,
              width: 250,
              height: 150,
              child: box,
            ),
          ),
        ),
      ),
    );
  }
}
