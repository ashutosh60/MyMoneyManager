import 'package:flutter/material.dart';
import 'package:my_money_manager/components.dart';
import 'package:my_money_manager/pages/home.dart';


class Expense extends StatefulWidget {
  const Expense({Key? key}) : super(key: key);

  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Expenses"),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
        elevation: 0.5,
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
          }),

          new IconButton(icon: Icon(Icons.add), onPressed: (){
            //this will call the alert
            showDialog(context: context,
                builder: (context)=> new AlertDialog(
                  title: new Text("add"),
                  content: new Container(
                    height: 160.0,
                    child: new AlertComponents()
                  ),
                ));
          } )
        ],
      ),

      //navigation bar
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
