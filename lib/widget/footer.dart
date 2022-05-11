import 'package:flutter/material.dart';

class NyayaagFooterWidget {
  static getFooter() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.white38,
                ),
                child: const Text("Privacy Policy"),
              ),
              const SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.white38,
                ),
                child: const Text("Terms & Conditions"),
              ),
              const SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.white38,
                ),
                child: const Text("Site Map"),
              ),
              const SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.white38,
                ),
                child: const Text("Contact us"),
              ),
            ]),
      ),
    );
  }
}
