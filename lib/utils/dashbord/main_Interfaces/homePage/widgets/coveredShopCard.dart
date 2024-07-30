import 'package:flutter/material.dart';

class CoveredShopCard extends StatelessWidget {
  const CoveredShopCard(this.shopname, this.invoiceno, this.amount,
      {super.key});
  final String shopname;
  final String invoiceno;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.mark_chat_read_sharp),
      title: Text(shopname),
      subtitle: Row(
        children: [
          Expanded(child: Text("Invoice No : $invoiceno")),
          Expanded(child: Text("Amount : Rs $amount")),
        ],
      ),
    );
  }
}
