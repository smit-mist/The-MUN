import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ExtraDetails extends StatefulWidget {
  @override
  _ExtraDetailsState createState() => _ExtraDetailsState();
}

class _ExtraDetailsState extends State<ExtraDetails> {
  final _auth = FirebaseAuth.instance;
  String email = "", name = "";

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1880, 8),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    email = _auth.currentUser.email;
    name = _auth.currentUser.displayName;
    print(email);
    print(name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Fill Your Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        height: h*0.9,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.8,
                  child: TextFormField(
                    initialValue: name,
                    onChanged: (change) {
                      setState(() {
                        name = change;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.8,
                  child: TextFormField(
                    initialValue: email,
                    onChanged: (change) {
                      setState(() {
                        email = change;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${selectedDate.toLocal()}".split(' ')[0]),
                    SizedBox(
                      width: 30.0,
                    ),
                    RaisedButton(
                      onPressed: () => _selectDate(context),
                      child: Text('Select date'),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  width: w * 0.8,
                  child: TextField(
                    onChanged: (change) {
                      setState(() {
                        //password = change;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
                SizedBox(height: h*0.25,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: w * 0.8,
                      height: h * 0.07,
                      child: Center(
                          child: Text(
                        'Proceed',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                      color: Colors.grey.shade400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
