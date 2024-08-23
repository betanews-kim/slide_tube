import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';


final List<String> imgList = [
  'https://previews.123rf.com/images/farang/farang1201/farang120100042/11875193-%EC%95%84%EC%B9%A8%EC%97%90-%EC%95%88%EA%B0%9C-%EB%82%80-%EB%B0%94%EB%8B%A4%EC%9D%98-%EC%A0%84%EB%A7%9D-%EA%B8%B4-%EB%85%B8%EC%B6%9C-%EC%83%B7-%EC%84%B8%EB%A1%9C-%ED%8C%8C%EB%85%B8%EB%9D%BC%EB%A7%88-%EC%A1%B0%EC%84%B1-.jpg',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

List<String> youtubePaths = ['GbeS5R4vvpU', 'x_A0tnGdpPo', '_4Z6tVhmjxQ','2AGN8GougR0','k3kL2DyB1HE','ujjmYp-_hTQ','FBwFtH_OC2c','DQaue3P_lww','NTDO8R7ZnY8','Xyt44hNW0-o'];
//List<String> youtubePaths = ['_uF_qVT6ZjQ','sIlKADAMVT8','hyedINgROoo','5FqXwbJj5L0','JW4crq3F0ZM', 'eYD1RlQLrRY', 'XO3mH4hBrHQ','FxcBFM7lDis','k3kL2DyB1HE','qyShY8pnd3M','WWlV098nl98','WplivF5ErG0','JUR-OPchZ_g','kKxeeq4g-14','JUR-OPchZ_g','kKxeeq4g-14','dNnLyBal51A','4sZTyYWkKnM','fYQxthUKung','UpQf64TrZJY','jeP5_jzaxQ4'];
List<String> kthPaths = ['IPTV팀 영화파트', 'bb', 'cc','dd','ee','ff','gg','hh','kk','jj'];

void main() => runApp(CarouselDemo());

final themeMode = ValueNotifier(2);

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // return ValueListenableBuilder(
    //  builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
        //  darkTheme: ThemeData.dark(),
        //  themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (ctx) => CarouselDemoHome(),
            '/basic': (ctx) => BasicDemo(),
            '/nocenter': (ctx) => NoCenterDemo(),
            '/image': (ctx) => ImageSliderDemo(),
            '/complicated': (ctx) => ComplicatedImageDemo(),
            '/enlarge': (ctx) => EnlargeStrategyDemo(),
            '/manual': (ctx) => ManuallyControlledSlider(),
            '/noloop': (ctx) => NoonLoopingDemo(),
            '/vertical': (ctx) => VerticalSliderDemo(),
            '/fullscreen': (ctx) => FullscreenSliderDemo(),
            '/ondemand': (ctx) => OnDemandCarouselDemo(),
            '/indicator': (ctx) => CarouselWithIndicatorDemo(),
            '/prefetch': (ctx) => PrefetchImageDemo(),
            '/reason': (ctx) => CarouselChangeReasonDemo(),
            '/position': (ctx) => KeepPageviewPositionDemo(),
            '/multiple': (ctx) => MultipleItemDemo(),
            '/zoom': (ctx) => EnlargeStrategyZoomDemo(),
          },
        );
    //  },
    //  valueListenable: themeMode,
  //  );
  }
}

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  DemoItem(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          title,
        style: TextStyle(
          color: Colors.red,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class CarouselDemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text('kt alpha 미디어사업본부'),
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
          //DemoItem('Basic demo', '/basic'),
          //DemoItem('No center mode demo', '/nocenter'),
          //DemoItem('Image carousel slider', '/image'),
          //DemoItem('More complicated image slider', '/complicated'),
          //DemoItem('Enlarge strategy demo slider', '/enlarge'),
          //DemoItem('Manually controlled slider', '/manual'),
          //DemoItem('Noon-looping carousel slider', '/noloop'),
          //DemoItem('Vertical carousel slider', '/vertical'),
          //DemoItem('Fullscreen carousel slider', '/fullscreen'),
          //DemoItem('Carousel with indicator controller demo', '/indicator'),

             Container(
               color: Colors.white,
               width: MediaQuery.of(context).size.width,
               height:50,
               child: Text('')

             ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height:100,
            child: Center(
                child: Text(
                    '흥미유발 V-Shorts',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),

          ),

   //       DemoItem('흥미유발 V-Shorts', '/ondemand'),
          Container(
            height: 90,
            color: Colors.white,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ondemand');
                },
                child: Text("시작하기"),
                // elevation는 그림자 효과

              ),
            ),
          ),
             SizedBox(
                 width: 50,

                 child: Image.asset('assets/kt.png')
             ),
             Container(
               width: 50,
               height: 30,
               color: Colors.transparent,
               child:
               Text(''),
             ),
          Container(child: Image.asset('assets/c.jpg')),
          //DemoItem('Image carousel slider with prefetch demo', '/prefetch'),
          //DemoItem('Carousel change reason demo', '/reason'),
          //DemoItem('Keep pageview position demo', '/position'),
          //DemoItem('Multiple item in one screen demo', '/multiple'),
          //DemoItem('Enlarge strategy: zoom demo', '/zoom'),
        ],
      ),

    );
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: list
                .map((item) => Container(
              child: Center(child: Text(item.toString())),
              color: Colors.green,
            ))
                .toList(),
          )),
    );
  }
}

class NoCenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              disableCenter: true,
            ),
            items: list
                .map((item) => Container(
              child: Text(item.toString()),
              color: Colors.green,
            ))
                .toList(),
          )),
    );
  }
}

class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image slider demo')),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .map((item) => Container(
              child: Center(
                  child:
                  Image.network(item, fit: BoxFit.cover, width: 1000)),
            ))
                .toList(),
          )),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: 0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
  ),
))
    .toList();

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complicated image slider demo')),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 0.3,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}

class EnlargeStrategyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complicated image slider demo')),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}

class ManuallyControlledSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Manually controlled slider')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(enlargeCenterPage: true, height: 200),
                carouselController: _controller,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () => _controller.previousPage(),
                      child: Text('←'),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () => _controller.nextPage(),
                      child: Text('→'),
                    ),
                  ),
                  ...Iterable<int>.generate(imgList.length).map(
                        (int pageIndex) => Flexible(
                      child: ElevatedButton(
                        onPressed: () => _controller.animateToPage(pageIndex),
                        child: Text("$pageIndex"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class NoonLoopingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Noon-looping carousel demo')),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
            ),
            items: imageSliders,
          )),
    );
  }
}




class VerticalSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vertical sliding carousel demo')),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1.0,
              //aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
              autoPlay: false,
            ),
            items: imageSliders,
          )),
    );
  }
}
class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          title: Text('test'),
        ),
      ),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              scrollDirection: Axis.vertical,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
              child: Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: height,
                  )),
            ))
                .toList(),
          );
        },
      ),
    );
  }
}
class OnDemandCarouselDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Text('test'),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;

            return CarouselSlider.builder(
              itemCount: 20,
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
                // autoPlay: false,
              ),
              itemBuilder: (ctx, index, realIdx) {
                return MyImageView (youtubePaths[index],);
              },
            );
          },
        ),
      ),
      bottomNavigationBar:  Container(
        color: Colors.black,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 30,

                    child: Icon(
                        Icons.home,
                        color: Colors.white
                    ),

                  ),
                  Text(
                      '홈',
                    style: TextStyle(
                    color:Colors.white,
                    fontSize: 14.0,
                  ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,

                  child: Icon(
                      Icons.save_alt,
                      color: Colors.white
                  ),

                ),
                Text(
                  '저장',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 58,

                  child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.red,
                      size: 40
                  ),

                ),

              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,

                  child: Icon(
                      Icons.favorite,
                      color: Colors.white
                  ),

                ),
                Text(
                  '좋아요',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,

                  child: Icon(
                      Icons.settings,
                      color: Colors.white
                  ),

                ),
                Text(
                  '설정',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
//kt alpha




class MyImageView extends StatefulWidget {
  String videoPath;


  MyImageView( this.videoPath, {Key? key}) : super(key: key);

  @override
  State<MyImageView> createState() => _MyImageViewState();
}
class _MyImageViewState extends State<MyImageView> {
  late YoutubePlayerController _controller;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;

  get onPressed => null;


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoPath, //유튜브 주소가 들어간다.
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: false,
        disableDragSeek: true,
        // 드래그할때 슬라이드가 넘어가기 위해 적용
     //   showVideoAnnotations: false,
        loop: true,
        forceHD: false,

      ),
    )..addListener(listener);
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;

  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
    //textToShow = _videoMetaData.title;

    //슬라이드를 할경우 그전에 유튜브는 재생을 중지한다.
  }
  void listener() {
    //textToShow = _videoMetaData.title;
    if (mounted) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
        print(_videoMetaData.title);


      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: YoutubePlayer(

              aspectRatio : 9 / 16,
              controller: _controller,
              showVideoProgressIndicator: true, //진행바를 보여준다
              progressIndicatorColor: Colors.red,
              )
        ),
        Positioned(
          bottom: 0,
          left: 10,
          child: Column(
            children: [
              Container(
                width: 330,
                height: 30,
                color: Colors.transparent,
                child: Text(
                  kthPaths[0],
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                width: 330,
                height: 30,
                color: Colors.transparent,
                child: Text(
                    _videoMetaData.author,
                    style: TextStyle(
                        color:Colors.white,
                      fontSize: 18.0,
                    ),
                ),
              ),
              Container(
                width: 330,
                height: 50,
                color: Colors.transparent,
                child: Text(
                  _videoMetaData.title,
                  style: TextStyle(
                      color:Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 40,
          right: 10,
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Icon(
                    Icons.share,
                    color: Colors.white
                )
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Icon(
                    Icons.thumb_up_alt,
                    color: Colors.white
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Icon(
                    Icons.thumb_down_alt,
                    color: Colors.white
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Icon(
                    Icons.cast,
                    color: Colors.white
                ),
              ),
              Container(
                width: 50,
                height: 30,
                color: Colors.transparent,
                child:
                  Text(''),
              ),
              SizedBox(
                width: 55,
                height: 55,
                child:
                  ShakeWidget(
                 // duration: this.duration,
                  shakeConstant: ShakeSlowConstant1(),
                  autoPlay: true,
                  enableWebMouseHover: true,
                  child:
                  FittedBox(
                    child: FloatingActionButton(
                      onPressed: onPressed,
                      backgroundColor: Colors.deepPurpleAccent,
                      elevation: 8.0,
                      child: Text(
                        '지니tv\n로 보기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  )


              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 0,

          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(

                child: Text(
                    'kt alpha 추천',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ),
        ),
      ],
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 0.5,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.yellow
                        : Colors.orange)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

class PrefetchImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageDemoState();
  }
}

class _PrefetchImageDemoState extends State<PrefetchImageDemo> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prefetch image slider demo')),
      body: Container(
          child: CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIdx) {
              return Container(
                child: Center(
                    child: Image.network(images[index],
                        fit: BoxFit.cover, width: 1000)),
              );
            },
          )),
    );
  }
}

class CarouselChangeReasonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselChangeReasonDemoState();
  }
}

class _CarouselChangeReasonDemoState extends State<CarouselChangeReasonDemo> {
  String reason = '';
  final CarouselController _controller = CarouselController();

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Change reason demo')),
        body: Column(
          children: <Widget>[
            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: onPageChange,
                  autoPlay: true,
                ),
                carouselController: _controller,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: ElevatedButton(
                    onPressed: () => _controller.previousPage(),
                    child: Text('←'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () => _controller.nextPage(),
                    child: Text('→'),
                  ),
                ),
                ...Iterable<int>.generate(imgList.length).map(
                      (int pageIndex) => Flexible(
                    child: ElevatedButton(
                      onPressed: () => _controller.animateToPage(pageIndex),
                      child: Text("$pageIndex"),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Text('page change reason: '),
                  Text(reason),
                ],
              ),
            )
          ],
        ));
  }
}

class KeepPageviewPositionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Keep pageview position demo')),
      body: ListView.builder(itemBuilder: (ctx, index) {
        if (index == 3) {
          return Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  pageViewKey: PageStorageKey<String>('carousel_slider'),
                ),
                items: imageSliders,
              ));
        } else {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            color: Colors.blue,
            height: 200,
            child: Center(
              child: Text('other content'),
            ),
          );
        }
      }),
    );
  }
}

class MultipleItemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multiple item in one slide demo')),
      body: Container(
          child: CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: false,
              viewportFraction: 1,
            ),
            itemCount: (imgList.length / 2).round(),
            itemBuilder: (context, index, realIdx) {
              final int first = index * 2;
              final int second = first + 1;
              return Row(
                children: [first, second].map((idx) {
                  return Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network(imgList[idx], fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
              );
            },
          )),
    );
  }
}

class EnlargeStrategyZoomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('enlarge strategy: zoom demo')),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            enlargeFactor: 0.4,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}