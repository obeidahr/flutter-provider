import 'package:flutter/material.dart';
import 'package:provider/mycounter.dart';
import 'package:provider/second.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCounter>(
      create:(context)=>MyCounter(),
      child:MaterialApp(
          home: Home(),
        )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Consumer<MyCounter>(
                builder:(context,obj,child){
                  return Text('${obj.counter}');
                }
           ),
           actions: [
             IconButton(
               icon: Icon(Icons.forward),
               onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Second()));
             }),
           ],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyCounter>(
                builder:(context,obj,child){
                  return Text('${obj.counter}');
                }
              ),
              Consumer<MyCounter>(
                builder:(context,obj,child){
                  return IconButton(
                           icon: Icon(Icons.add),
                           onPressed: (){
                              obj.inc();
                           }
                         );
                }
              ),
              Consumer<MyCounter>(
                builder:(context,obj,child){
                  return Text('${obj.counter}');
                }
              ),             
            ],
          ),
        )
      );
  }
}