import 'package:flutter/material.dart';

import 'constants.dart';

class PurchaseCard extends StatelessWidget {
  final Widget purchaseIcon;
  final String Price;
  final String PurchaseName;
  final String date;
  final String Place;
  PurchaseCard(
      {this.purchaseIcon,
      this.PurchaseName,
      this.Price,
      this.Place,
      this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            purchaseIcon,
            SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      PurchaseName,
                      style: kBold,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      Place,
                      style: kTextSmall,
                    ),
                  ],
                ),
                SizedBox(
                  width: 100.0,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      Price,
                      style: kBold,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      date,
                      style: kTextSmall,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
