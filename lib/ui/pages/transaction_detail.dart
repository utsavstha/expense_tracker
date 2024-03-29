import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/ui/components/dashed_seperator.dart';
import 'package:expense_tracker/ui/components/primary_button.dart';
import 'package:expense_tracker/ui/components/ticket_material.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({Key? key}) : super(key: key);

  @override
  _TransactionDetailState createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
              padding: const EdgeInsets.all(8),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  const Icon(
                    Icons.arrow_back,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Transaction',
                    style: TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payee',
                        style: TextStyle(
                            fontFamily: 'GTWalsheimPro',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Breakfast',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'GTWalsheimPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transaction Type',
                                style: TextStyle(
                                    fontFamily: 'GTWalsheimPro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Expense',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'GTWalsheimPro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Container(
                              height: 30,
                              child: VerticalDivider(color: Colors.black)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                    fontFamily: 'GTWalsheimPro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '2020-10-10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'GTWalsheimPro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const DashedSeparator(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount',
                                  style: TextStyle(
                                      fontFamily: 'GTWalsheimPro',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'Rs 300',
                                  style: TextStyle(
                                      fontFamily: 'GTWalsheimPro',
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: primaryColor,
                                side:
                                    BorderSide(width: 1.0, color: primaryColor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Edit',
                                style: const TextStyle(
                                    fontFamily: 'GTWalsheimPro',
                                    fontSize: 14,
                                    color: primaryColor,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
