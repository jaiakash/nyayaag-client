import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {Key? key,
      required this.itemName,
      required this.itemIcon,
      required this.itemColor,
      required this.onClickAction})
      : super(key: key);

  final String itemName;
  final IconData itemIcon;
  final Color itemColor;
  final Function onClickAction;

  @override
  Widget build(BuildContext context) => Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 150.0),
        child: ElevatedButton(
            onPressed: () => {onClickAction()},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    itemIcon,
                    color: itemColor,
                    size: 26.0,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    itemName,
                    style: TextStyle(
                        fontSize: 18,
                        color: itemColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )),
      ));
}
