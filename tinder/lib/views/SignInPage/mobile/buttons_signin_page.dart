import 'package:flutter/material.dart';

class ButtonsSigninPage extends StatelessWidget {
  const ButtonsSigninPage(
      {super.key, required this.logo, required this.text, required this.url});

  final Icon logo;
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(url);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        //width: width / 2,
        height: 40,
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 13)),
            Container(
              alignment: Alignment.topCenter,
              constraints: const BoxConstraints(
                maxHeight: 20,
                maxWidth: 20,
              ),
              child: logo,
            ),
            //Padding(padding: EdgeInsets.only(left: space)),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
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
