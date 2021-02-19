import 'package:flutter/material.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:page52/main.dart';

void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: Text('hello world'),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(""
            "MY APP",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        elevation: 35,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search,
                color: Colors.white,),
              onPressed: () =>
              {
                //action
              }),
          IconButton(
              icon: Icon(Icons.shopping_cart_sharp,
                  color: Colors.white),
              onPressed: () =>
              {
                //action
              }),
        ],
      ),
      body: getListView(),
    );
  }
  Widget getListView(){
    var listView = ListView(
      children: [
       ListTile(
         title: Text('Worked On Widget',
         textAlign: TextAlign.center,
         style: TextStyle(
           fontWeight: FontWeight.bold,
           color: Colors.white,
           fontSize: 25
         ),),
       ),
        ListTile(
          leading: Container(
            child: Column(
            children: [
                  Text('Main Intension to add Icons in the App Bar  ',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,),
            ],
           ),
          ),
        )
      ],
    );
    return listView;
  }

}

