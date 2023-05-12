import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class ViewC extends StatefulWidget {
  const ViewC({Key? key}) : super(key: key);

  @override
  State<ViewC> createState() => _ViewCState();
}

class _ViewCState extends State<ViewC> {

  Map<String, dynamic>? paymentIntent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            payment();
          },
          child: Text("Click Here To Pay"),
        ),
      ),
    );
  }

  Future<void>payment() async {

    try{

      Map<String, dynamic> body ={
        'amount': 1000,
        'currency':"LKR"
      };

      var response = await http.post(
        Uri.parse('https://dashboard.stripe.com/test/apikeys'),
        headers:{
          'Authorization': 'sk_test_51N6mXgSBxnVMn6y8TY7zswpmUhWOwrwmDsMPeJqdLZXRmINuQJpyoDXCfX3MmWqhqPD6HgOmNnwRNC9DeLrREhbP00sx8VwzFF',
          'Content-type': 'application/ x-www-form-urlencoded'
        },

      );
      paymentIntent =json.decode(response.body);
    }
        catch(error){
      throw Exception(error);

        }

        await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret:paymentIntent!['client_secret'],
          style: ThemeMode.light,
          merchantDisplayName:'Nadeesha'

        )).then((value) => {});

    try{
      await Stripe.instance.presentPaymentSheet().then((value) => {

        print("payment successfull")
      });
    }
        catch(error){}

  }
}
