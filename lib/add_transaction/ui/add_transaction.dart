import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Add transaction'),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.green, width: .5),
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white,
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.arrowUp,
                                color: Colors.green.shade700,
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Income',
                                style: TextStyle(color: Colors.green.shade700),
                              ),
                            ],
                          ),
                        ),
                      ),
                         VerticalDivider(
                          width: 20,
                          thickness: 1,
                          color: Colors.grey.shade400,
                        ),
                      Expanded(
                        child: Column( mainAxisSize: MainAxisSize.min,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.arrowDown,
                              color: Colors.red.shade700,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Expense',
                              style: TextStyle(color: Colors.red.shade700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      VerticalDivider(
                        width: 20,
                        thickness: 1,
                        color: Colors.grey.shade400,
                      ),
                      Expanded(
                        child: Column( mainAxisSize: MainAxisSize.min,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.rotate,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Transfer',
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
