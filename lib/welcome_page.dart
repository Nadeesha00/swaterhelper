import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swaterhelper/auth_controller.dart';

import 'package:swaterhelper/navbar.dart';



class WelcomePage extends StatefulWidget {
  String email;
   WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(

      drawer: NavBar(email: widget.email),

      appBar: AppBar(

      ),

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(

            width: w,
            height: h*0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/signuup.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            /*child: Column(
              children: [
                SizedBox(height: h*0.11,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  backgroundImage: AssetImage(
                      "img/profile.png"
                  ),
                )
              ],
            ),*/
          ),

          SizedBox(height: 25,),
          /*Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 16,

                      color: Colors.grey[500]
                  ),
                ),
              ],
            ),
          ),*/
          SizedBox(height: 200,),
          GestureDetector(
            onTap: (){
              AuthController.instance.logout();
            },
            child: Container(

              width: w*0.5,
              height: h*0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/loginb.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child:Center(
                child: Text(
                  "Sign out",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
