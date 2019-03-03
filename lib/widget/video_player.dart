import 'package:clone_musikbagus/widget/default_header.dart';
import 'package:clone_musikbagus/widget/home_musikrilis.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  final Music music;
  VideoPlayer({@required this.music});
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // _videoPlayerController1 =
    //     VideoPlayerController.asset('assets/video_example.mp4');
    _videoPlayerController1 = VideoPlayerController.network(widget.music.uri);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 1.5,
      showControls: true,
      placeholder: Container(
        color: Colors.black,
        child: Image.asset(widget.music.assetUri),
      ),
      autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _buildVideoPlayer = Container(
      child: Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Color(0xFF141414), width: 1.0))),
        // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Hero(
              child: Material(
                color: Colors.transparent,
                child: Theme(
                  child: DefaultTextStyle(
                    style: TextStyle(color: Colors.white),
                    child: Chewie(
                      controller: _chewieController,
                    ),
                  ),
                  data: Theme.of(context).copyWith(
                    dialogBackgroundColor: Colors.black26,
                    iconTheme: IconThemeData(color: Colors.white),
                    accentColor: Colors.red,
                    disabledColor: Colors.white,
                  ),
                ),
              ),
              tag: widget.music.assetUri,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1, color: Colors.grey),
                      bottom: BorderSide(width: 1, color: Colors.grey))),
              padding: const EdgeInsets.only(right: 16.0),
              height: 35.0,
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: Text(
                '1.523.029 views',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Musikrilis',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Hero(
              child: Material(
                color: Colors.transparent,
                child: Text(
                  widget.music.title,
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              tag: widget.music.title,
            )
          ],
        ),
      ),
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/launch_screen_default.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            DefaultHeader(),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                child: ListView(
                  key: PageStorageKey('listVideo'),
                  shrinkWrap: true,
                  children: <Widget>[_buildVideoPlayer],
                ),
                context: context,
              ),
            )
          ],
        ),
      ),
    );
  }
}
