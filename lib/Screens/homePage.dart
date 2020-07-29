import 'package:banking_app_ui/cards.dart';
import 'package:banking_app_ui/constants.dart';
import 'package:banking_app_ui/reuseContainer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        r'$2,589.50',
                        style: kTextStyleCurrency,
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/img1.jpg'),
                          backgroundColor: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Available Balance',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ContainerIcon(
                            inIcon: Icon(
                              Icons.playlist_add_check,
                              size: 30.0,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Send',
                            style: kTextStyle,
                          )
                        ],
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            ContainerIcon(
                              inIcon: Icon(
                                Icons.call_received,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Request',
                              style: kTextStyle,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            ContainerIcon(
                              inIcon: Icon(
                                Icons.local_atm,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Loan',
                              style: kTextStyle,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            ContainerIcon(
                              inIcon: Icon(
                                Icons.account_balance_wallet,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Topup',
                              style: kTextStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Recent Transactions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade900,
                                  fontSize: 20.0),
                            ),
                            Text(
                              'See all',
                              style: kTextSmall,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 30.0),
                              child: Text(
                                'All',
                                style: kBold,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 25.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.move_to_inbox,
                                    color: Colors.green,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Income',
                                    style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 25.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.pie_chart_outlined,
                                    color: Colors.red,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Expense',
                                    style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Today',
                              style: kTextSmall,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: PurchaseCard(
                                    purchaseIcon: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.black54,
                                      size: 40,
                                    ),
                                    PurchaseName: 'Grocery',
                                    Price: r'-$50.56',
                                    Place: 'mit-mall',
                                    date: 'Aug 26'),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: PurchaseCard(
                                    purchaseIcon: Icon(
                                      Icons.directions_car,
                                      color: Colors.black54,
                                      size: 40,
                                    ),
                                    PurchaseName: 'Transport',
                                    Price: r'$6.00',
                                    Place: 'UBER Pool',
                                    date: 'Aug 26'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Yesterday',
                              style: kTextSmall,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: PurchaseCard(
                                    purchaseIcon: Icon(
                                      Icons.payment,
                                      color: Colors.green,
                                      size: 30,
                                    ),
                                    PurchaseName: 'Payment',
                                    Price: r'+$650.56',
                                    Place: 'From Andre',
                                    date: 'Aug 25'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
