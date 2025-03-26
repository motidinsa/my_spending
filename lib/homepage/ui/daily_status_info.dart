import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyStatusInfo extends StatelessWidget {
  final DateTime date;

  const DailyStatusInfo({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: .5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('EEE, dd/MM/y').format(date),
                style: TextStyle(
                  color: Color(0xff279132),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 20),
              FaIcon(
                FontAwesomeIcons.arrowUp,
                size: 18,
                color: Colors.green.shade700,
              ),
              // Icon(Icons.arrow_upward_rounded),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  '\$ 20,000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
              ),
              SizedBox(width: 10),
              FaIcon(
                FontAwesomeIcons.arrowDown,
                size: 18,
                color: Colors.red.shade700,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  '\$ 20,00000000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
