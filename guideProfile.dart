import "package:flutter/material.dart";

class GuideProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _GuideProfileState();
}

class _GuideProfileState extends State<GuideProfile>{
  List data;


}

@override
Widget build(BuildContext context){
  return Scaffold(
    resizeToAvoidBottomInsert: false,
    appBar: AppBar(
      title: Text("Your Profile"),
      backgroundColor: Colors.teal,
    ),
    body: SingleChildScrillView(
      child: Container(
        child: Column(
          chilren:<Widget>[
            _profileImageSection(),
            _profileDetailsSection(),
          ]
        )
      )
    )
    floatingActionButton: FloatingActionButton.extended(
      label: Text("Photo album"),
      onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=> CarouselPhotoLoader()));

      },
      backgroundColor: Colors.teal,
      icon: Icon(Icons.photo_album),
    ),
    floatingActionButtonLocation: FloatingAction Button Location.endFloat,

  );
}

Widget _profiledetailsSection(){
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                color: Colors.teal,
                child: ListTitle(
                  title: Text("Trips :"),
                  trailing: Teat("successful"),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                color: Colors.teal,
                child: ListTitle(
                  title: Text("current rating :"),
                  trailing: Text("4.5"),
                ),
              ),
              Card(
                shape: RoundedrectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                color: Colors.teal,
                child: ListTitle(
                  title: Text("current badge :"),
                  trailing: Icon(Icons.card_travel),
                ),

              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Center(
                child: ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)
                    ),
                    onPressed: (){
                      loadProfile(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UpdateProfile()
                        )
                      );
                    },
                    child: Text("update profile"),
                  ),
                )
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _profileImageSection(){
  return Card(
    child: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0),
          ),
          Card(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  _profileAvator(),
                  ListTitle(
                    title: Text(
                      name== null? "Still loading" : name,
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      email== null? "still loading" : email,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    isThreeLine: true,
                  )
                ],
              ),
            )
          ),
        ],
      ),
    ),
  );
}

Widget _profileAvator(){
  return AvatorGlow(
    shape: BoxShape.circle,
    startDelay: Duration(milliseconds: 1000),
    glowColor: Colors.blue,
    endRadius: 120.0,
    duration: Duration(milliseconds: 2000),
    repeat: true,
    showTwoGlows: true,
    repeatpauseDuration: Duration(milliseconds: 100),
    child: Material(
      elevation: 8.0,
      shape: CircleBorder(),
      child: CircleAvator(
        backgroundColor: Colors.grey[100],
        child: ClipOval(
          child: Image.network(
            profileImageUrl != null? profileImageUrl : "",
            fit: BoxFit.cover,
            height: 200,
            width:200,
          ),
        ),
        radius: 70,
      ),
    ),
  );
}