import 'package:flutter/material.dart';

class NyayaagAppBarWidget {
  static getAppBar() {
    return AppBar(
      toolbarHeight: 80,
      title: SizedBox(
        width: 70,
        height: 80,
        child: Image.asset('nyayaaglogo.png'),
      ),
      actions: <Widget>[
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Home"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Our Services"),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Career"),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Blog"),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Gallery"),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Consult Expert"),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade900,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Login/Register"),
        ),
        const SizedBox(width: 50),
      ],
    );
  }
}
