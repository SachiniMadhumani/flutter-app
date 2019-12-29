import "package:flutter/mayerial.dart";

class AddPlace extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return AddPlaceState();
  }
}

class AddPlaceState extends State<AddPlace>{
  TextEditingController place = TextEditingController();
  TextEditingController date =TextEditingController();
}

void addTimeline(BuildContext context) async {
  final Map<String, dynamic> data = {
    "place": place.text,
    "date": date.text,
  
  };

  if(response.statusCode == 200){
    Navitator.push(context,MaterialPageRoute(
      builder: (context)=>MainScreen()
    ));
    print("clicked");
  }
}

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Add your favorite photos"),
      backgroundColor: Colors.indigo,
    ),
    body: Container(
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.1),
      ),
      child: Form(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16.0,
                  ),
                  LabelTextField(
                    textEditingController: place,
                    hintText: "Place you went",
                    labelText: "Enter name of the place",
                    validator: null,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  LabelTextField(
                    textEditingController: date,
                    hintText: "Date",
                    labelText: "Date you went",
                    validator=null,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50.0,
                    ),
                  ),
            
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}