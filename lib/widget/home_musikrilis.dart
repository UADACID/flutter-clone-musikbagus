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
            'https://r1---sn-npoe7ne6.googlevideo.com/videoplayback?expire=1551637140&gir=yes&fvip=14&pl=24&requiressl=yes&ipbits=0&key=cms1&itag=18&mime=video%2Fmp4&txp=3531432&lmt=1541418297264050&clen=17418185&c=WEB&ratebypass=yes&source=youtube&dur=247.176&ei=NMZ7XKDvGIPB7QSY0Zh4&ip=188.235.148.43&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&id=o-AAnrAsviDE5_tHVW6ir-oeLzoZ4w7qCwUIjUAwNqDS7C&signature=4FDDAE7D9EB55CA3A8B70EE9F4385AC96AE2DC46.6EDD47B9F51B143E322DDE8BCACF1788CA451B22&video_id=hlznpxNGFGQ&title=Clean+Bandit+-+Baby+%28feat.+Marina+%26+Luis+Fonsi%29+%5BOfficial+Video%5D&rm=sn-xguxaxjvh-gufe7e,sn-n8vr7ez&req_id=532bf54b94fba3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=29&mn=sn-npoe7ne6&ms=rdu&mt=1551620278&mv=m'),
    Music(
        title: 'Sugar',
        assetUri: 'assets/images/sugar.png',
        singer: 'Maroon 5',
        uri:
            'https://r3---sn-npoe7n7y.googlevideo.com/videoplayback?itag=18&ipbits=0&source=youtube&mime=video%2Fmp4&fvip=2&dur=301.418&pl=24&id=o-APZ6hZxN32omkd6TNX1w9UqMbtxu0lrJ0jcG9XjeF38r&ratebypass=yes&ip=209.34.29.9&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&gir=yes&requiressl=yes&key=cms1&clen=27090438&txp=5531432&c=WEB&ei=H8x7XKi2CJntjQSl_KaACQ&lmt=1544140011151034&expire=1551638655&signature=014F639A15FB517830D1FE3A4DEC9CDF2020FC49.83E1D5FDE6685B77275931B8758539E4FAD433D5&video_id=09R8_2nJtjg&title=Maroon+5+-+Sugar&rm=sn-jjpuxm5n-iv0l7s,sn-q4fell7s&req_id=1407b4e09208a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=29&mn=sn-npoe7n7y&ms=rdu&mt=1551620023&mv=m'),
    Music(
        title: 'So Far Away',
        assetUri: 'assets/images/far_away.png',
        singer: 'A7X',
        uri:
            'https://r3---sn-3c27sn7z.googlevideo.com/videoplayback?txp=5531432&c=WEB&expire=1551641810&ei=cth7XJ3KHYaGyQXtr77QDQ&key=cms1&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mm,mn,ms,mv,nh,pl,ratebypass,requiressl,source&ip=178.210.129.11&requiressl=yes&pl=19&id=o-AH2eEIw7H2ELzuvkP7UwpwL7sehilpJ8vG0ReyIKR4bk&dur=328.840&mime=video%2Fmp4&ipbits=0&itag=18&gir=yes&lmt=1539937065946465&source=youtube&ratebypass=yes&clen=25247345&fvip=3&signature=3071E80E00FB80CB479FF15E088063D89690E771.1CECB39D90175BDA08AD3500F6A8C0EF54468963&video_id=A7ry4cx6HfY&title=Avenged+Sevenfold+-+So+Far+Away+%5BOfficial+Music+Video%5D&redirect_counter=1&rm=sn-quxapm-3c2e7s&req_id=3e41ad28b028a3ee&cms_redirect=yes&ipbypass=yes&mm=29&mn=sn-3c27sn7z&ms=rdu&mt=1551620151&mv=m&nh=IgpwcjAyLmticDAyKgkxMjcuMC4wLjE'),
    Music(
        title: 'Sambalado',
        assetUri: 'assets/images/sambalado.png',
        singer: 'Ayu Ting Ting',
        uri:
            'https://r4---sn-npoe7ner.googlevideo.com/videoplayback?dur=234.103&lmt=1537877905994554&expire=1551631759&sparams=clen,dur,ei,expire,gir,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&gir=yes&key=cms1&mime=video%2Fmp4&c=WEB&id=o-AET9GSRVPuEt5YB_4bGLl0AF1MEYAULF5ZVLV2mvA57t&clen=17978437&ip=188.27.137.163&ei=L7F7XNvaKZel1gLKoYWICA&pl=24&fvip=4&ipbits=0&requiressl=yes&ratebypass=yes&source=youtube&itag=18&signature=5CF883541055A37189826BBF5C39F01CCC8D8696.1C8D912C0B7F8A12D875929803D85CB9BA174723&video_id=lnL73iYo-sY&title=Ayu+Ting+Ting+-+Sik+Asik+%5BOfficial+Music+Video+Clip%5D&rm=sn-gqn-vu2s7s,sn-c0qlk7z&req_id=66bc88d55ac2a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=36.72.215.121&mm=29&mn=sn-npoe7ner&ms=rdu&mt=1551620214&mv=m')
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
