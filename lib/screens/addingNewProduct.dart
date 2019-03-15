import 'package:flutter/material.dart';

import 'package:login/components/addingProductTile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/models/productData.dart';
import 'package:login/screens/AddedProducts.dart';

class AddingNewProduct extends StatefulWidget {
  _AddingNewProduct createState() => _AddingNewProduct();
}

// final formKey = GlobalKey<FormState>();

class _AddingNewProduct extends State<AddingNewProduct> {
  String mobile = "";

  String value = "Unknow";

  String value1 = "";
  String value2 = "";
  String value3 = "";
  String value4 = "";
  String value5 = "";
  final List<DropdownMenuItem> items = [
    DropdownMenuItem(
      value: "Amazon",
      child: Text("Amazon"),
    ),
    DropdownMenuItem(
      value: "Jarirr",
      child: Text("Jarirr"),
    ),
    DropdownMenuItem(
      value: "Obeikan",
      child: Text("Obeikan"),
    ),
    DropdownMenuItem(
      value: "Unknow",
      child: Text("UnKnow"),
    ),
  ];
  TextEditingController product = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Adding New Product "),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // _showDialog(context);
              validate(value1, value2, value3, value4, value5);
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Product Editor",
              style: TextStyle(
                  color: Color.fromRGBO(68, 67, 187, 1), fontSize: 18),
            ),
          )),
          Column(
            children: <Widget>[
              // TextFormField(
              //   controller: c,
              // ),
              AddingProductTile(
                  text: "Product Name",
                  width: width,
                  control: product,
                  ontap: (str) {
                    value1 = str;
                  }),

              AddingProductTile(
                  text: "Price",
                  width: width,
                  control: price,
                  ontap: (str) {
                    value2 = str;
                  }),
              AddingProductTile(
                  text: "Qunatity",
                  width: width,
                  control: quantity,
                  ontap: (str) {
                    value3 = str;
                  }),
              // AddingProductTile("Supplier Name", width),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Container(
                        width: 100,
                        child: Text(
                          "Supplier Name",
                          style:
                              TextStyle(color: Color.fromRGBO(255, 0, 123, 1)),
                        ),
                      ),
                    ),
                    DropdownButton(
                        items: items,
                        value: value,
                        hint: Text(
                          "",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        onChanged: (item) {
                          // print(value);
                          setState(() {
                            print(item);
                            value = item;
                            value4 = item;
                          });
                        })
                  ],
                ),
              ),

              AddingProductTile(
                  text: "Supplier Phone Number",
                  width: width,
                  control: number,
                  ontap: (str) {
                    value5 = str;
                  }),
            ],
          ),
        ],
      ),
    );
  }

  validate(String v1, String v2, String v3, String v4, String v5) {
    if (v1.trim().length == 0 ||
        v2.trim().length == 0 ||
        v3.trim().length == 0 ||
        v4.trim().length == 0 ||
        v5.trim().length == 0) {
      Fluttertoast.showToast(
          msg: "please fill all coloums",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      // ProductData data = new
      ProductData(
          value1: value1,
          value2: value2,
          value3: value3,
          value4: value4,
          value5: value5);

      setState(() {
        value1 = "";
        value2 = "";
        value3 = "";
        value4 = "";
        value5 = "";

        value = "Unknow";
        product.clear();
        price.clear();
        quantity.clear();
        number.clear();
      });

      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => AddedProducts()));
    }
  }
}
