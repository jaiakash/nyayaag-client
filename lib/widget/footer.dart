import 'package:flutter/material.dart';

class NyayaagFooterWidget {
  static getFooter() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('Privacy Policy',
                  style: TextStyle(color: Colors.white38, fontSize: 20)),
              SizedBox(width: 50),
              Text('Terms & Conditions',
                  style: TextStyle(color: Colors.white38, fontSize: 20)),
              SizedBox(width: 50),
              Text('Site Map',
                  style: TextStyle(color: Colors.white38, fontSize: 20)),
              SizedBox(width: 50),
              Text('Contact Us',
                  style: TextStyle(color: Colors.white38, fontSize: 20))
            ]),
      ),
    );
  }
}
