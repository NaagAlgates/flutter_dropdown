import "package:flutter/material.dart";

class DropDownButtonPage extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonPage> {
  var _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DROP_DOWN_BUTTON"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.3,
              child: Card(
                shape: OutlineInputBorder(gapPadding: 20.0),
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      elevation: 0,
                      style: TextStyle(color: Colors.blue),
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Select State",maxLines: 1,style: TextStyle(color: Colors.blue,fontSize: 30.0),),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: "1",
                          child: Center(
                            child: Text(
                              "First",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*0.03),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "2",
                          child: Center(
                            child: Text(
                              "Second",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*0.03),
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      value: _value,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
