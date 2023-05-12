

import 'package:flutter/material.dart';

import 'package:swaterhelper/calculate.dart';
import 'package:swaterhelper/current_usage.dart';
import 'package:swaterhelper/drawer_items.dart';
import 'package:swaterhelper/exit_page.dart';
import 'package:swaterhelper/fedback.dart';
import 'package:swaterhelper/home_page.dart';

import 'package:swaterhelper/login_page.dart';
import 'package:swaterhelper/notification.dart';
import 'package:swaterhelper/payment.dart';

import 'drawer_item.dart';
import 'get_started_page.dart';






class NavBar extends StatelessWidget {
  String email;
   NavBar({Key? key,required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safeArea=EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);
    final isCollapsed= false;
    return Container(
      width: isCollapsed? MediaQuery.of(context).size.width*0.2: null,
      child: Drawer(
        child: Container(
          color: Color(0xFF1a2f45),

          child: Column(

            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.10).add(safeArea),
                color: Colors.lightBlue,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 10,),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 10,),
              Divider(color: Colors.white70,),
              const SizedBox(height: 10),
              buildList(
                indexOffset: itemsFirst.length,
                  items: itemsSecond, isCollapsed: isCollapsed,),
              Spacer(),

              const SizedBox(height: 12,),
            ],

          ),
        ),


      ),

    );
  }
Widget buildList({
required bool isCollapsed,
  required List<DrawerItem> items,
  int indexOffset=0,
})=>
 ListView.separated(
   shrinkWrap: true,
   primary: false,
   itemCount: items.length,
   separatorBuilder: (context, index)=>SizedBox(height: 5),
   itemBuilder: (context, index){
     final item =items[index];

     return buildMenuItem(
       isCollapsed:isCollapsed,
       text:item.title,
       icon:item.icon,
       onClicked:()=> selectItem(context,indexOffset+ index),
     );

   },
 );
  void selectItem(BuildContext context,int index){
    final navigateTo = (page)=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> page,
    ));
    switch(index){
      case 0:
        navigateTo(HomePage());
        break;
      case 1:
        navigateTo(CurrntUsage());
      break;
      case 2:
        navigateTo(Calculate());
        break;
        case 3:
      navigateTo(Payment());
      break;
      case 4:
      navigateTo(NotificationPage());
      break;
      case 5:
      navigateTo(FeedBack());
      break;
      case 6:
        navigateTo(LoginPage());
            break;


    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
})
  {
    final color = Colors.white;
    final leading = Icon(icon,color: color,);

    return Material(
      color: Colors.transparent,
      child: ListTile(
        leading: leading,
        title: Text(text,style: TextStyle(color: color,fontSize: 13),),
        onTap: onClicked,
      ),
    );

  }

Widget buildHeader(bool isCollapsed)=> Row(
  
  children: [
    Container(
      margin: const EdgeInsets.only(top:5,right: 70,left: 90,),


      child: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              backgroundImage: AssetImage(
                  "img/profile.png"
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),

            Text(

              email,
              style: TextStyle(
                  fontSize: 12,

                  color: Colors.black54
              ),
            ),


            SizedBox(height: 2,),


          ],

        ),

      ),

    ),
  ],
);


  

}
