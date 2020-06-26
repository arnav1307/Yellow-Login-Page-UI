import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage() ,
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(
       width:double.infinity ,
            padding:EdgeInsets.symmetric(vertical: 1.0) ,
            decoration:BoxDecoration(
              gradient:LinearGradient(
                begin:AlignmentDirectional.bottomCenter ,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[700],
                ],
              ) ,
            ),
       child: Column(
         crossAxisAlignment:CrossAxisAlignment.start ,
         children: <Widget>[
           SizedBox(height: 30.0,),
           Padding(
             padding: EdgeInsets.all(20.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text(
                   'Login',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 40.0,
                   ),
                 ),
                 SizedBox(height:8.0),
                 Text(
                   'Welcome Back',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20.0,
                   ),
                 )
               ],
             ),
           ),
            Expanded(
              child:Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(50),
                  topRight:Radius.circular(50)
                )
              ) ,
                child: Padding(
                  padding: EdgeInsets.all(10) ,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        padding:EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow:[BoxShadow(
                            color: Color.fromRGBO(223, 95, 27,0.3 ),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )] ,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration:BoxDecoration(
                                border:Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[200]
                                  ),
                                ),

                              ) ,
                              child: TextField(
                                decoration:InputDecoration(
                                  hintText: "Email ID here",
                                  hintStyle:TextStyle(color:Colors.grey),
                                  border: InputBorder.none
                                ) ,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration:BoxDecoration(
                                border:Border(
                                  bottom: BorderSide(
                                      color: Colors.grey[200]
                                  ),
                                ),

                              ) ,
                              child: TextField(
                                decoration:InputDecoration(
                                    hintText: "Passwords",
                                    hintStyle:TextStyle(color:Colors.grey),
                                    border: InputBorder.none
                                ) ,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Forgot Password",
                        style:TextStyle(color:Colors.grey) ,
                      ),
                      SizedBox( height:40),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:30 ),
                      Text('Continue with social media',style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:Colors.blue
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:Colors.black
                            ),
                              child:Center(
                              child: Text(
                                "Github",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ),
                            ),
                          )],
                      )
                    ],
                  ),
                ),
            ), ),
         ],
       ),
     ) ,
   );
  }
}
