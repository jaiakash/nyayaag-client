import 'package:flutter/material.dart';

class NyayaagAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final AppBar appBar;
  const NyayaagAppBarWidget({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: SizedBox(
        width: 70,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset('logo/nyayaaglogo.png'),
        ),
      ),
      actions: <Widget>[
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Home",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/services');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Our Services",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Career",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            debugPrint('Received click');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Blog",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/student/update');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Student",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/advocate');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Advocate",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(150, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 50),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
