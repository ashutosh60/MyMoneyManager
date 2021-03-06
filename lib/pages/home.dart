import 'package:flutter/material.dart';

//my own imports

import 'package:my_money_manager/components.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //this code gives us the width of the screen
    final mediaQuerydata = MediaQuery.of(context);
    final size = mediaQuerydata.size.width;

    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter cash app"),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
        elevation: 0.5,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.add), onPressed: (){
            //this will call the alert
            showDialog(context: context,
                builder: (context)=> new AlertDialog(
                  title: new Text("add"),
                  content: new Container(
                    height: 160.0,
                    child: AlertComponents(),
                  ),
                ));
          } )
        ],
      ),

      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: new Icon(Icons.account_balance_wallet,size: 64.0, color: Colors.grey,),
              subtitle: new Padding(padding: EdgeInsets.only(left: size / 3.3),
                  child: new Text("waste no money!", style: TextStyle(fontSize: 16.0),)),
            ),
          )
        ],
      ),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Balance:"),
                subtitle: new Text("\$720"),
              ),
            ),

            Expanded(
              child: ListTile(
                title: new Text("Expense:"),
                subtitle: new Text("\$230",style: TextStyle(color: Colors.red),),
              ),
            ),

            Expanded(
                child: new IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,))
            ),


          ],
        ),

      ),
    );
  }
}

