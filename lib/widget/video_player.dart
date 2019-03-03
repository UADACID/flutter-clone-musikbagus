import 'package:clone_musikbagus/widget/default_header.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
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
    _videoPlayerController1 = VideoPlayerController.network(
        'https://r1---sn-npoe7ne6.googlevideo.com/videoplayback?clen=17418185&ipbits=0&ratebypass=yes&mime=video%2Fmp4&c=WEB&expire=1551614612&source=youtube&txp=3531432&dur=247.176&itag=18&pl=24&requiressl=yes&ei=NG57XKyhIbfA7AT8yZzgCQ&fvip=1&lmt=1541418297264050&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&id=o-AH7Zepeon8T2tayBEEL_EBr_9V9AHNTLP-6HKAZhvT4l&gir=yes&ip=178.140.95.77&key=cms1&signature=109BB7EDA05B50657C2D668638397444E5F4890B.637722CB2059F150F6E3AAA935DED7B2F94ED805&video_id=hlznpxNGFGQ&title=Clean+Bandit+-+Baby+%28feat.+Marina+%26+Luis+Fonsi%29+%5BOfficial+Video%5D&rm=sn-gvnuxaxjvh-c35d7e,sn-n8vr7ez&req_id=9594e85d7c37a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=29&mn=sn-npoe7ne6&ms=rdu&mt=1551596833&mv=m');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 1.5,
      showControls: true,
      placeholder: Container(
        color: Colors.black,
        // child: Image.network(
        //     'https://hellosehat.com/wp-content/uploads/2018/05/shutterstock_611045375.jpg'),
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
            Chewie(
              controller: _chewieController,
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
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Beby',
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
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
