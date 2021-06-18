import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books.dart';
import 'details.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Book> books = [
    Book(author:'Chetan Bhagat', title:'India Positive',image:'assets/images/book1.png'),
    Book(author:'Molly Green', title:'An Orphan War',image:'assets/images/book5.png'),
    Book(author:'Rebecca Whitney',  title:'The Hidden Girls',image:'assets/images/book2.png'),
    Book(author:'William Shakespeare', title:'Merchant Of Venice',image:'assets/images/book3.png'),
    Book(author:'Ilana C. Myer', title:'Fire Dance',image:'assets/images/book4.png')
  ];

  @override
  Widget build(BuildContext context) {
         return Scaffold(
           body: ListView(
               scrollDirection: Axis.vertical,
               children:<Widget>[
                 Container(
                  // Adding background image to the application
                   padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                   decoration: BoxDecoration(
                   image:DecorationImage(
                     image:AssetImage('assets/images/mainscreen.png'),
                     fit: BoxFit.fill,
                     )
                   ),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                            RichText(
                              text: TextSpan(
                                 children: [
                                     TextSpan(
                                        text: 'Pick Your Favourite ',
                                        style: TextStyle(
                                            fontSize: 40.0,
                                            fontFamily: 'Kaushan',
                                        )
                                     ),
                                    TextSpan(
                                        text: 'Book...',
                                        style: TextStyle(
                                             fontSize: 60.0,
                                             fontFamily: 'Kaushan',
                                             color: Colors.black
                                        )
                                    )
                                  ]
                              ),),
                        ],
                    ),
                 ),

                 Container(
                 child:Column(
                 children: books.map((book){
                    return BookList(book:book);
                  }).toList(),
                 ),)
                ],),
         );
     }
}

  class BookList extends StatelessWidget {
    Book book;
    BookList({required this.book});
    @override
    Widget build(BuildContext context) {
      return Padding(
                padding: EdgeInsets.all(16.0),
                child:Container(
               // Clips and scales the child and adjusts the child into the box
                 child:FittedBox(
                   child: Material(
                      color: Colors.white,
                       elevation: 14.0,
                       borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0x802196F3),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // Split into two parts
                          // First container to display details about the book
                         // Second container to display image of the book
                         children: <Widget>[
                             Container(
                                 margin: EdgeInsets.all(20.0),
                                 child: Padding(
                                   padding: const EdgeInsets.only(left: 24.0),
                                   child: Column(
                                     children:<Widget>[
                                     Container(
                                       child:RichText(
                                         text: TextSpan(
                                           children:[
                                             // Style 1
                                             TextSpan(
                                               text:book.title,
                                               style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 50.0
                                               ),
                                             ),
                                         ]
                                       ),),),
                                             // Style 2
                                       Container(
                                         margin: EdgeInsets.all(20.0),
                                         child:RichText(
                                           text: TextSpan(
                                               children:[
                                                 // Style 1
                                                 TextSpan(
                                                   text:book.author,
                                                   style: TextStyle(
                                                       color: Colors.pink,
                                                       fontSize: 30.0
                                                   ),
                                                 ),
                                               ]
                                           ),),),
                                       SizedBox(
                                           child:ElevatedButton(
                                             onPressed: (){
                                               // Navigate to next page when tapped.
                                               Navigator.push(
                                                 context,
                                                 MaterialPageRoute(builder: (context) =>  DetailsScreen()),
                                               );
                                             },
                                             child:Text('Details',
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
                                 ),


                            Container(
                             // Used to clip the right corners of the image
                              width: 200,
                              height: 250,
                              child: ClipRRect(
                               borderRadius: new BorderRadius.circular(24.0),
                               child: Image(
                                 // fits the image into the box
                                 fit: BoxFit.contain,
                                 // places the image to the top right
                                 alignment: Alignment.topRight,
                                 image: AssetImage(book.image),
                               ),
                             ),
                           ),
                         ],)
                      ),
                   ),
                ),
              );
     }
  }
