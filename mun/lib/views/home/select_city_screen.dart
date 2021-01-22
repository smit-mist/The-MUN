import 'package:flutter/material.dart';

class SelectCityScreen extends StatefulWidget {
  @override
  _SelectCityScreenState createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List<String> cityNames = [
    'Ahmedabad',
    'Surat',
    'Rajkot',
    'Vadodra',
    'Chennai',
    'Hyderabad',
    'Bangalore',
    'Mumbai',
    'Delhi',
    'Kolkata',
    'Jaipur',
    'Pune',
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Pick A Region',
          style: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        height: h,
        width: w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: h * 0.08,
              width: w,
              color: Colors.grey[150],
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 18,
                  ),
                  hintText: 'Search for your city',
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
              height: h * 0.002,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  //childAspectRatio: (w * 0.04) / (h * 0.008),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.grey[200],
                    child: Center(
                      child: Text(
                        cityNames[index],
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
