import 'package:flutter/material.dart';
import 'package:provider/mycounter.dart';

class Second extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text('counter result:'),
              Consumer<MyCounter>(
                builder:(context,obj,child){
                  return Text('${obj.counter}');
                }
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('counter result:'),
            Consumer<MyCounter>(
                builder:(context,obj,child){
                  return Text('${obj.counter}');
                }
              ),
            Consumer<MyCounter>(
                builder:(context,obj,child){
                  return RaisedButton(
                    child: Icon(Icons.add),
                    onPressed: (){
                      obj.inc();
                  });
                }
              ),
          ],
        ),
      ),     
    );
  }
}