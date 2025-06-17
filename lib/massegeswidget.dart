import 'package:whatsapp/colors.dart';
import 'package:whatsapp/images.dart';
import 'package:whatsapp/massege.dart';
import 'package:flutter/material.dart';

class mass extends StatelessWidget {
  masseges masssege;
  mass(this.masssege);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          masssege.issender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .7, minWidth: 10),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: masssege.issender ? colors.grey : colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(masssege.issender ? 16 : 0),
                topRight: Radius.circular(masssege.issender ? 0 : 16),
              ),
            ),
            child: Column(
              crossAxisAlignment: masssege.issender
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                if (masssege.massege != null)
                  Text(
                    (masssege.massege!),
                    style: TextStyle(
                        color: colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                if (masssege.images != null && masssege.massege != null)
                  SizedBox(
                    height: 8,
                  ),
                if (masssege.images != null)
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(images.profile!))
              ],
            )),
      ],
    );
  }
}
