import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/Text.dart';

class CustomActionButton extends StatelessWidget {

  final String label;
  final IconData icone;
  final Color btnBackgroundColor;
  final Color iconBackgroundColor;
  final Color iconColor;
  final Function onPressed;

  const CustomActionButton({Key key,this.onPressed, this.label, this.icone, this.btnBackgroundColor, this.iconBackgroundColor, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 165,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: btnBackgroundColor
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 24,),
            Expanded(
              child: CustomText(
                color: colors.gray,
                size: TextSize.SMALL,
                text: label,
              ),
            ),
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: iconBackgroundColor
              ),
              child: Icon(
                icone,
                color: iconColor,
              ),
            ),
            SizedBox(width: 8,),

          ],
        ),
      ),
    );
  }
}
