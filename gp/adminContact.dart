import "package:flutter/material.dart";

class AdminContact extends Statelesswidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact with Admin"),
      ),//appbar
      body: Container(
        height: 300.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            ListTitle(
              leading: CircleAvator(
                child: Text("1"),
                backgroundColor: Colors.black,
              ),
              title: Text("Conversation 2"),
              trailing: Icon(Icons.insert_emotion,color: Colors.black,),

            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                children:<Widget>[
                  FloatingActionButton(
                    onPressed:(){},
                    child: Icon(Icons.add),
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}