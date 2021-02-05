import 'package:flutter/material.dart';
import 'package:mun/models/committee.dart';
import 'package:mun/views/booking_mun/extra_details_screen.dart';
import 'package:mun/views/elements/textstyles.dart';
import 'package:mun/views/elements/widgets/chewie_video_player.dart';
import 'package:video_player/video_player.dart';

class AboutCommitteeScreen extends StatefulWidget {
  Committee currentCommittee;
  AboutCommitteeScreen({this.currentCommittee});
  @override
  _AboutCommitteeScreenState createState() => _AboutCommitteeScreenState();
}

class _AboutCommitteeScreenState extends State<AboutCommitteeScreen> {
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.currentCommittee.name,
              style: boldHeading,
            ),
            Text(
              widget.currentCommittee.agenda,
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 15.0,
                color: Colors.grey,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: h*0.9,
        padding: EdgeInsets.only(top: 40.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.3,
                width: w,
                child: PageView(
                  controller: _controller,
                  children: [
                    Container(
                      color: Colors.grey[200],
                      margin: EdgeInsets.symmetric(horizontal: 12.0),
                      width: w,
                      height: h * 0.3,
                      child: Video(
                        controller: VideoPlayerController.network(
                            widget.currentCommittee.imageUrls[0].toString()),
                      ),
                    ),
                    Container(
                      child: Image.network(
                        widget.currentCommittee.imageUrls[1].toString(),
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes
                                  : null,
                            ),
                          );
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Image.network(
                        'https://picsum.photos/id/100/200/300',
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes
                                  : null,
                            ),
                          );
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Agenda :- ${widget.currentCommittee.agenda}',
                        style: simple(16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Seats :- ${widget.currentCommittee.remainingSeats}',
                        style: simple(16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Suggestions :- ${widget.currentCommittee.suggestions}',
                        style: simple(16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description :-',
                        style: boldHeading,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${widget.currentCommittee.description}',
                        style: simple(16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            //  Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.grey[200],
                  height: 80.0,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExtraDetails(),
                          ),
                        );
                      },
                      child: Text(
                        'Confirm Committee',
                        style: boldHeading,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
