//Import material.dart package in your app’s main.dart file.
import 'package:flutter/material.dart';
import 'package:demo/mainscreen.dart';

// Create void main runApp() inbuilt method and here we would call our main MyApp class.
void main() {
  runApp(MaterialApp(
  home: MyApp(),
  ));
}

// Stateless widgets are immutable widgets. Once created the state of the widget cannot be changed.
//Create our main MyApp class extends with State less widget.
class MyApp extends StatelessWidget{

  @override
  //Inside this class, the build function is overridden which takes the BuildContext as the parameter.
  // This build function returns a widget where we design the UI of the app.

  Widget build(BuildContext context) {
    // MaterialApp is a predefined class in a flutter. It is likely the main or core component of flutter.
    // We can access all the other components and widgets provided by Flutter SDK
    return Scaffold(
           body: Container(
             // Adding background image to the application
             width: double.infinity,
             decoration: BoxDecoration(
                 image:DecorationImage(
                   image:AssetImage('assets/images/backgroundpic.png'),
                   fit: BoxFit.fill,
                 )
             ),
             child:Column(
               // Aligns the content exactly in the center
               mainAxisAlignment: MainAxisAlignment.center,

               children: <Widget>[
                 //The RichText widget displays text that uses multiple different styles
                 //Displays the title 'Book Store
                 Container(
                 margin: const EdgeInsets.fromLTRB(10, 20, 20, 30),
                 child:RichText(
                   text: TextSpan(
                     children:[
                       // Style 1
                       TextSpan(
                         text:'Book',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 50.0,
                           fontFamily: 'Kaushan',
                         ),
                       ),
                       // Style 2
                       TextSpan(
                         text:'Store',
                         style: TextStyle(
                           color: Colors.pink,
                           fontSize: 50.0,
                           fontFamily: 'Kaushan',
                         ),
                       ),
                 ],
                 ),
                 )),
                 // Display the button
                 SizedBox(
                   child:ElevatedButton(
                     onPressed: (){
                       // Navigate to next page when tapped.
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) =>  MainScreen()),
                       );
                     },
                     child:Text('Start Reading',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 25.0,
                       ),),
                     style: ElevatedButton.styleFrom(
                       primary:Colors.pink,
                       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),)
                     ),
                   )
                 )
               ],
             ),
           ),
    );
  }
}






