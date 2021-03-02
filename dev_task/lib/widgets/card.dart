import 'package:flutter/material.dart';

import 'card_element_bottom.dart';
import 'card_element_top.dart';

class CardWidget extends StatelessWidget {
  final Color bgColor;
  CardWidget(this.bgColor);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AspectRatio(
              aspectRatio: 1.586,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AspectRatio(
              aspectRatio: 1.586,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                child: ClipPath(
                  clipper: CardElementTop(),
                  child: Opacity(
                    opacity: 0.7,
                    child: Container(
                      color: Colors.white12,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AspectRatio(
              aspectRatio: 1.586,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(10)),
                child: ClipPath(
                  clipper: CardElementBottom(),
                  child: Opacity(
                    opacity: 0.7,
                    child: Container(
                      color: Colors.white12,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: AspectRatio(
                aspectRatio: 1.5,
                child: Container(
                    margin: EdgeInsets.all(26),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Transform.translate(
                                  offset: Offset(10, 0),
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white54,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Current Account",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "1234 **** **** 2443",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Balance",
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 12),
                                        ),
                                        SizedBox(height: 5),
                                        Text("130,00,000 IQD",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Valid Through",
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 12),
                                        ),
                                        SizedBox(height: 5),
                                        Text("06/23",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ])
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))))
      ],
    );
  }
}
