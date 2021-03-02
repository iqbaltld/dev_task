import 'package:dev_task/utils/constants.dart';
import 'package:flutter/material.dart';

class AccountsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1234 **** **** 2443",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColorDark),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Al Nahda Branch - Dubai, UAE",
                              style:
                                  TextStyle(fontSize: 12, color: primaryColor),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Card Valid Through",
                              style:
                                  TextStyle(fontSize: 12, color: primaryColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "06/23",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColorDark),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "130,000,00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColorDark),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "IQD",
                        style: TextStyle(fontSize: 15, color: primaryColor),
                      ),
                      Expanded(
                        child: Text(
                          "Saving Account",textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 15, color: primaryColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 25, bottom: 15),
            child: Row(
              children: [
                Icon(
                  Icons.horizontal_rule,
                  color: primaryColor,
                ),
                SizedBox(width: 5),
                Text(
                  "Transfer Amount",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryColorDark),
                ),
              ],
            )),
        Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/cash_transfer.png",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Text(
                    "Cash transfer",
                    style: TextStyle(color: primaryColor, fontSize: 16),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: primaryColor,
                  )
                ],
              ),
            )),
        SizedBox(height: 10),
        Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/other_accounts.png",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Text(
                    "Other accounts in same branch",
                    style: TextStyle(color: primaryColor, fontSize: 16),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: primaryColor,
                  )
                ],
              ),
            )),
        SizedBox(height: 10),
        Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/between.png",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Text(
                    "Between own accounts",
                    style: TextStyle(color: primaryColor, fontSize: 16),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: primaryColor,
                  )
                ],
              ),
            )),
      ],
    );
  }
}
