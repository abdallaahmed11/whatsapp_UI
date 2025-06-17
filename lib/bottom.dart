import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            style: TextStyle(
                color: colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            cursorColor: colors.green,
            decoration: InputDecoration(
                hintText: ' type massege ...',
                hintStyle: TextStyle(
                    color: colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                prefixIcon: Icon(
                  Icons.camera_alt_outlined,
                  color: colors.white,
                ),
                suffixIcon: Icon(
                  Icons.send,
                  color: colors.white,
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(width: 1, color: colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(width: 1, color: colors.green),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(width: 1, color: colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(width: 1, color: colors.green),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(width: 1, color: colors.green),
                )),
          )),
          Container(
            width: 16,
          ),
          ElevatedButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                  backgroundColor: colors.green,
                  foregroundColor: colors.white,
                  padding: EdgeInsets.all(16)),
              child: Icon(
                Icons.mic,
              )),
        ],
      ),
    );
  }
}
