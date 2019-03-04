import 'package:clone_musikbagus/widget/video_player.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Music {
  final String title;
  final String singer;
  final String uri;
  final String assetUri;

  Music({this.title, this.uri, this.singer, this.assetUri});
}

class HomeMusikrilis extends StatelessWidget {
  final List<Music> musics = [
    Music(
        title: 'Baby',
        assetUri: 'assets/images/baby.png',
        singer: 'Clean Bandit',
        uri:
            'https://r1---sn-npoe7ne6.googlevideo.com/videoplayback?expire=1551689643&dur=247.176&lmt=1541418297264050&ip=1.20.102.113&key=cms1&fvip=1&source=youtube&id=o-AEgPYg5PTtiBnnWRQ82QoSvfNG02O94OIm_WKmxAwrRz&clen=17418185&ratebypass=yes&gir=yes&ei=S5N8XPDGCtKjogORwYrQDg&requiressl=yes&mime=video%2Fmp4&itag=18&pl=24&txp=3531432&c=WEB&ipbits=0&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&signature=353D5C716E465F32FD538ADB3D0713166F4C43BC.0EDF72164D6680C9ADD9B331123744A830F7497F&video_id=hlznpxNGFGQ&title=Clean+Bandit+-+Baby+%28feat.+Marina+%26+Luis+Fonsi%29+%5BOfficial+Video%5D&rm=sn-uvu-c33e67e,sn-30ale7e&req_id=c68ce25b2755a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=30&mn=sn-npoe7ne6&ms=nxu&mt=1551669282&mv=m'),
    Music(
        title: 'Sugar',
        assetUri: 'assets/images/sugar.png',
        singer: 'Maroon 5',
        uri:
            'https://r3---sn-npoe7n7y.googlevideo.com/videoplayback?mime=video%2Fmp4&itag=18&key=cms1&ipbits=0&lmt=1544140011151034&source=youtube&txp=5531432&ratebypass=yes&c=WEB&dur=301.418&ip=46.229.206.135&ei=RJh8XPCPNNOW1wbZz6aABw&id=o-AOb4OZsdUMbvhJB4gTsII24K0lrEfSNBP8upzYlyfFHY&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&clen=27090438&gir=yes&expire=1551690916&requiressl=yes&pl=24&fvip=3&signature=78E6DD5B3C80E87060495EA5089F330CFE43A4BC.4D5F2172061ACF33BB7F30C01AB6B1BE621B8854&video_id=09R8_2nJtjg&title=Maroon+5+-+Sugar&rm=sn-nvm-cxbs7l,sn-nv4s77s&req_id=3cf309cada70a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=29&mn=sn-npoe7n7y&ms=rdu&mt=1551669338&mv=m'),
    Music(
        title: 'So Far Away',
        assetUri: 'assets/images/far_away.png',
        singer: 'A7X',
        uri:
            'https://r3---sn-npoe7nes.googlevideo.com/videoplayback?source=youtube&clen=25247345&fvip=3&ratebypass=yes&expire=1551682334&txp=5531432&itag=18&key=cms1&ei=vnZ8XJePLY6Y1gbI5aCoDA&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=41.169.160.90&c=WEB&id=o-AFdHdiFp68NvBLUtDeMxybIL1Chsx1y24o_nX132fNc_&dur=328.840&mime=video%2Fmp4&requiressl=yes&pl=24&gir=yes&ipbits=0&lmt=1539937065946465&signature=3C30345DF10C2238EAD51265213D288479CF0D2B.55E5EBC580E75673A6F2EB32FFFFCD709421BC9A&video_id=A7ry4cx6HfY&title=Avenged+Sevenfold+-+So+Far+Away+%5BOfficial+Music+Video%5D&redirect_counter=1&rm=sn-wocs76&req_id=1cc303702e52a3ee&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=31&mn=sn-npoe7nes&ms=au&mt=1551669372&mv=m'),
    Music(
        title: 'musikbagus example.',
        assetUri: 'assets/images/sambalado.png',
        singer: 'Other',
        uri:
            'https://res.cloudinary.com/musikbagus/video/upload/v1551241577/musikologi/musikbagus_day_vol2.mp4')
  ];
  @override
  Widget build(BuildContext context) {
    var _buildTilte = Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Musikrilis',
              style: TextStyle(
                  color: Color(0xffd20a26),
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          Text('View all',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ))
        ],
      ),
    );

    var _buildHorizontalList = Container(
      padding: const EdgeInsets.only(left: 10.0),
      color: Colors.black,
      height: (MediaQuery.of(context).size.height / 4) + 50.0,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return VideoPlayer(
                  music: musics[index],
                );
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(musics[index].assetUri)),
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.height / 5,
                    ),
                    tag: musics[index].assetUri,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 30.0,
                    width: MediaQuery.of(context).size.height / 5,
                    child: AutoSizeText(
                      musics[index].singer,
                      presetFontSizes: [40.0, 20.0, 14.0],
                      maxLines: 4,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: MediaQuery.of(context).size.height / 5,
                    child: Hero(
                      child: Material(
                        color: Colors.transparent,
                        child: AutoSizeText(
                          musics[index].title,
                          presetFontSizes: [40.0, 20.0, 14.0],
                          maxLines: 4,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      tag: musics[index].title,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: musics.length,
      ),
    );
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[_buildTilte, _buildHorizontalList],
      ),
    );
  }
}
