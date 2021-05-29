import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade100,
          title: Center(child: Text(
                              "jawan pakstan".toUpperCase(),
                              style: TextStyle(fontSize: 30,),
                                )
                  ),
        ),

        body: Center(
          child: Column(
            children: [
              
              SizedBox(height: 55,),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/avatar.png'),
                    fit: BoxFit.fill,
                    )
                
                ),
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20,),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Icon(Icons.mail, color: Colors.grey,),
                    ),
                    hintText: "Enter your Email."
                  ),
                ),
              ),
              
              SizedBox(height: 5,),

              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20,),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Icon(Icons.lock, color: Colors.grey,),
                    ),
                    hintText: "Enter your Password."
                  ),
                ),
              ),

              
              SizedBox(height: 40,),
              
              ElevatedButton(
                
                onPressed: (){}, 
                child: Text(
                        "Login".toUpperCase(),
                        style: TextStyle(fontSize: 15),
                        ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade400),
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15,)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.indigo.shade300)
                      )
                  )
                ),
                
                )


    
            ],
          ),
        ),

      ),
    );
  }
}
