import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isresponsive;
  double? width;
  ResponsiveButton({Key? key,
    this.width=120,
    this.isresponsive=false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isresponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF5d69b3),
        ),
        child: Row(
          mainAxisAlignment: isresponsive==true?MainAxisAlignment.spaceBetween :MainAxisAlignment.center,
          children: [
            isresponsive==true?Container(
              margin: const EdgeInsets.only(left: 20),
                child: AppText(text: 'Book Trip Now', color: Colors.white,)): Container(),
            Image.asset('assets/button-one.png'),
          ],
        ),
      ),
    );
  }
}
