import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body:Container(
          child:Column(
            // Aligns the content exactly in the center
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Container(
            margin: const EdgeInsets.fromLTRB(10, 20, 20, 30),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children : <Widget> [
                Column(
                  children: <Widget>[
                  Text(
                    "India",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                    Text(
                      " Positive",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ]
                ),
                Container(
                  // Used to clip the right corners of the image
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(24.0),
                    child: Image(
                      // fits the image into the box
                      //fit: BoxFit.contain,
                      // places the image to the top right
                      //alignment: Alignment.topRight,
                      image: AssetImage('assets/images/book1.png'),
                    ),
                  ),
                ),
              ],
          ),
          ),

            Container(
        //  MediaQuery.of(context).size.height is used to find the height of the widget
            height : MediaQuery.of(context).size.height-200.0,
            padding: EdgeInsets.all(40.0),
            decoration: BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.only(topLeft:Radius.circular(90.0),topRight: Radius.circular(90.0)),
            ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Chetan Bhagat",
                      style: TextStyle(color: Colors.black,fontSize: 40.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.amber, size: 20,),
                        Icon(Icons.star, color: Colors.amber, size: 20,),
                        Icon(Icons.star, color: Colors.amber, size: 20,),
                        Icon(Icons.star, color: Colors.amber, size: 20,),
                        Icon(Icons.star, color: Colors.grey, size: 20,),

                        Text(
                          "  4.0",
                          style: TextStyle(
                              color: Colors.orange.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Chetan Bhagat has articled about the issues that India has faced like riots, economic falldown, poverty, corruption, bankrupcy, border issues etc from 2014 to 2019. These problems that we were or are facing is being described, justified and solutioned in an impressive and rhetoric manner.",
                      style: TextStyle(color: Colors.black,fontSize: 22.0),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                        child:ElevatedButton(
                          onPressed: (){},
                          child:Text('Read',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 15.0,
                            ),),
                          style: ElevatedButton.styleFrom(
                              primary:Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),)
                          ),),)
                  ],
           )
      ),],
      ),
    ),);
  }
}
