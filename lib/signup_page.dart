import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swaterhelper/auth_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController= TextEditingController();
    var passwordController= TextEditingController();
    List images=[
      "f.png",
      "google.png",
      "t.png"
    ];
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(leading :IconButton( onPressed: (){
        Navigator.pop(context);}, icon: Icon(Icons.arrow_back) ),),

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(

            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/signuup.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
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
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 0.08,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: emailController,

                    decoration: InputDecoration(
                      hintText: "Enter your email address",
                        prefixIcon: Icon(Icons.email, color: Colors.deepPurpleAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.password_rounded, color: Colors.deepPurpleAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                /*Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "Forget your passwrd?",
                      style: TextStyle(
                          fontSize: 20,
                          color:Colors.grey[500]

                      ),
                    )
                  ],
                ),*/

              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
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
                  "Sign up",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          RichText(text:
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text: "Have you an account?",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[500]
            )
          )),
          SizedBox(height: 60),
          RichText(text: TextSpan(
              text: "Sign up using the following methods",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16
              ),


          )
          ),
          Wrap(
            children:List<Widget>.generate(
              3,
                (index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor:Colors.grey[200],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "img/"+images[index]
                      ),
                    ),
                  ),
                );
                }
            ),
          )
        ],
      ),
    );
  }
}
