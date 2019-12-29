import "dart:io";

import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";

class GuideProfileUpdate extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return GuidePRofileUpdateState();
  }
}

class GuidePRofileUpdateState extends State<GuideProfileUpdate>{
    TextEditingController newNameController= TextEditingController();
    TextEditingController newEmailController= TextEditingController();
    TextEditingController newCategoryController= TextEditingController();


     @override
     Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(
           title: Text("Update profile"),
           backgroungColor: Colors.teal,
         ),
         body: Form(
           autovalidate: true,
           child: ListView(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 24.0),
                 child: Column(
                   children: <Widget>[
                     SizedBox(
                       height: 16,
                     ),
                     LabelTextField(
                        hintText: "Enter new username",
                       labelText: "New username",
                       validator: null,
                     ),
                     SizedBox(
                       height: 16,
                     ),
                     LabeltextField(
                      textEditingController: newNameController,
                      hintText: "Enter new Name",
                      labelText: "New Name",
                     ),
                     SizedBox(
                       height: 16,
                     ),
                     LabeltextField(
                      textEditingController: newEmailController,
                      hintText: "Enter new Email address",
                      labelText: "New Email Address",
                     ),
                     SizedBox(
                       height: 16,
                     ),
                     LabelTextField(
                       textEditingController: newCategoryController,
                       hintText: "Enter new category",
                       labelText: "New Category",
                     ),
                   ],
                 ),
               )
             ],
           ),
         ),
       );
     } 
    }