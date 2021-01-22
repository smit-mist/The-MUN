import 'package:flutter/material.dart';
import 'package:mun/views/booking_mun/receipt_screen.dart';

class SummaryOfBooking extends StatefulWidget {
  String name, email, mobileNo, nameOfCommittee, nameOfMUN, address, city;
  DateTime dob = DateTime.now(), dateOfMUN = DateTime.now();
  SummaryOfBooking({
    this.name,
    this.email,
    this.mobileNo,
    this.address,
    this.city,
    this.dateOfMUN,
    this.dob,
    this.nameOfCommittee,
    this.nameOfMUN,
  });
  @override
  _SummaryOfBookingState createState() => _SummaryOfBookingState();
}

class _SummaryOfBookingState extends State<SummaryOfBooking> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Summary of your booking',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        height: h * 0.9,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: "Smit Mistry",
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Name: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: 'demo@gmail.com',
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Email: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: "${widget.dob.toLocal()}".split(' ')[0],
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Date of Birth: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: '4242442424',
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Mobile No: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: 'UNESCO',
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Committee: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: "${widget.dob.toLocal()}".split(' ')[0],
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Date of MUN: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: "This is MUN",
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Name of MUN: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  //  expands: true,
                  minLines: 1,
                  maxLines: 5,
                  readOnly: true,
                  initialValue:
                      "Here comes the address of the MUN if address is too big it will go in next line",
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'Address: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                child: TextFormField(
                  readOnly: true,
                  initialValue: "Rajkot",
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                    prefixText: 'City: ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.25),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ReceiptScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: w * 0.8,
                    height: h * 0.07,
                    child: Center(
                        child: Text(
                      'Proceed to Pay',
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
    );
  }
}
