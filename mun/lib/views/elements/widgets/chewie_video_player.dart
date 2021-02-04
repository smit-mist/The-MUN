import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class Video extends StatefulWidget {
  VideoPlayerController controller;
  Video({this.controller});
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
        aspectRatio: 16 / 9,
        autoInitialize: true,
        videoPlayerController: widget.controller);
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }
}
