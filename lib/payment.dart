import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:swaterhelper/Pay.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 Stripe.publishableKey="";
 runApp(Payment());

}

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ViewC() ,
    );
  }
}
