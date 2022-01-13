import 'package:expense_tracker/ui/components/toolbar_component.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DailyTransaction extends StatefulWidget {
  const DailyTransaction({Key? key}) : super(key: key);

  @override
  _DailyTransactionState createState() => _DailyTransactionState();
}

class _DailyTransactionState extends State<DailyTransaction> {
  final items = [
    {'title': 'Breakfast', 'price': 'Rs 100', 'date': '2022-01-10'}
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ToolbarComponent(
          title: 'Daily Transactions',
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Breakfast',
                            style: TextStyle(
                                fontFamily: 'GTWalsheimPro',
                                fontSize: 19,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Rs 400',
                            style: TextStyle(
                                fontFamily: 'GTWalsheimPro',
                                fontSize: 16,
                                color: accentColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Friday 10:00 AM',
                        style: TextStyle(
                            fontFamily: 'GTWalsheimPro',
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                      Divider()
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
