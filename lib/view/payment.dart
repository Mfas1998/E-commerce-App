import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

import '../widgets/payment_method.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment", icon: Icons.arrow_back_ios),
      body: Column(
        children: [
          payment_method(
              payment_name: "Credit Card Or Debit", icon: Icons.credit_card),
          payment_method(payment_name: "Paypal", icon: Icons.paypal_sharp),
          payment_method(
              payment_name: "Bank Transfer", icon: Icons.account_balance),
        ],
      ),
    );
  }
}
