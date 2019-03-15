import 'package:flutter/material.dart';

Widget AddingProductTile(
    {String text,
    double width,
    Function ontap,
    TextEditingController control}) {
  //double Width =MediaQuery.of(context).size.width;
  // TextEditingController control = TextEditingController();
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 0),
          child: Container(
            width: width * 0.3,
            child: Text(
              text,
              style: TextStyle(color: Color.fromRGBO(255, 0, 123, 1)),
            ),
          ),
        ),
        text != "Product Name"
            ? Container(
                width: width * 0.6,
                child: TextField(
                  controller: control,
                  onChanged: (str) {
                    ontap(str);
                  },
                  decoration: InputDecoration(
                    hintText: text,
                    contentPadding: EdgeInsets.all(0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(255, 0, 123, 1))),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                  // validator: validate,
                  // autovalidate: true,
                ),
              )
            : Container(
                width: width * 0.6,
                child: TextField(
                  onChanged: (str) {
                    ontap(str);
                  },
                  controller: control,
                  decoration: InputDecoration(
                    hintText: text,
                    contentPadding: EdgeInsets.all(0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(255, 0, 123, 1))),
                  ),
                ),
              ),
      ],
    ),
  );
}

String validate(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length == null)
    return 'Complete the field';
  else
    return null;
}
