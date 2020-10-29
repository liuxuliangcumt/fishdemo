import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey _key1 = GlobalKey();
  Shader shader;
  Gradient gradient;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController1 = VideoPlayerController.network(
        'http://mpvideo.qpic.cn/0bf2imhluaaoyyapgam74rpv4q6dxjbq5oqa.f10002.mp4?dis_k=fb42b0c5b47e4f901e5ad9ed49e442b5&dis_t=1603946949&vid=wxv_1573112140243206147&format_id=10002');
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    gradient = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color.fromARGB(255, 219, 195, 252),
          Color.fromARGB(255, 148, 197, 252)
        ]);
    shader = gradient.createShader(
        Rect.fromLTWH(size.width / 2 - 100, 0, size.width / 2 + 20, 310));

    return Scaffold(
        backgroundColor: Colors.black,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        child: Chewie(
                          controller: _chewieController,
                        ),
                      ),
                      Image.asset(
                        "assets/1.webp",
                      ),
                      SizedBox(height: 20),
                      Text(
                        '你的Mate 自带光环',
                        style: TextStyle(
                            fontSize: 20, foreground: Paint()..shader = shader),
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        "assets/2.webp",
                      ),
                      Container(
                        width: size.width,
                        height: size.width / 1080 * 1773,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/3.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/4.png",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/5.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/6.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/4_1.webp",
                              width: size.width,
                            ),
                            Image.asset(
                              "assets/4_2.webp",
                              width: size.width,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: Image.asset(
                          "assets/hua.gif",
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        '你的Mate 芯潮澎湃',
                        style: TextStyle(
                            fontSize: 20, foreground: Paint()..shader = shader),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: size.width,
                        height: size.width / 1080 * 1773,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/7.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/8.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/4.png",
                                  width: size.width,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/7_1.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/4.png",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/7_2.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/4.png",
                                  width: size.width,
                                  fit: BoxFit.cover,
                                  height: 150,
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/8_2.webp",
                              width: size.width,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: Image.asset(
                          "assets/hua.gif",
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        '你的Mate 光影同行',
                        style: TextStyle(
                            fontSize: 20, foreground: Paint()..shader = shader),
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        "assets/9.webp",
                        width: size.width,
                      ),
                      Image.asset(
                        "assets/10.webp",
                        width: size.width,
                      ),
                      Container(
                        width: size.width,
                        height: size.width / 1080 * 1181,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Image.asset(
                              "assets/11.webp",
                              width: size.width,
                            ),
                            Image.asset(
                              "assets/11_1.webp",
                              width: size.width,
                            ),
                            Image.asset(
                              "assets/11_2.webp",
                              width: size.width,
                            ),
                          ],
                        ),
                      ), //光影同行
                      SizedBox(
                        width: 260,
                        child: Image.asset(
                          "assets/hua.gif",
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: size.width,
                        height: size.width / 1080 * 1850,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/s_1.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_2.gif",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_3.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/s_4.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_5.gif",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_6.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/s_7.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_8.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_9.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/s_11.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/s_12.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: Image.asset(
                          "assets/hua.gif",
                        ),
                      ),
                      //动态摄影
                      Image.asset(
                        "assets/d_1.webp",
                        width: size.width,
                      ),

                      Container(
                        width: size.width,
                        height: size.width / 1080 * 1050,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/d_2.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/d_3.gif",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/d_4.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/d_5.gif",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/d_6.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/d_7.gif",
                                  width: size.width,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: Image.asset(
                          "assets/hua.gif",
                        ),
                      ),
                      Image.asset(
                        "assets/13.webp",
                        width: size.width,
                      ),
                      Image.asset(
                        "assets/d_3.gif",
                        width: size.width,
                      ),

                      SizedBox(height: 40),
                      Text(
                        '你的Mate 贴心懂你',
                        style: TextStyle(
                            fontSize: 20, foreground: Paint()..shader = shader),
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        "assets/x.webp",
                        width: size.width,
                      ),

                      Container(
                        width: size.width,
                        height: size.width / 1080 * 1050,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Image.asset(
                              "assets/x_1.webp",
                              width: size.width,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/x_2.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/x_4.gif",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/x_5.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/x_6.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/x_7.webp",
                                  width: size.width,
                                ),
                                Image.asset(
                                  "assets/x_8.webp",
                                  width: size.width,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: Image.asset(
                          "assets/hua.gif",
                        ),
                      ),

                      Image.asset(
                        "assets/m_1.webp",
                        width: size.width,
                      ),
                      Image.asset(
                        "assets/m_2.webp",
                        width: size.width,
                      ),
                      Image.asset(
                        "assets/m_3.webp",
                        width: size.width,
                      ),
                      Image.asset(
                        "assets/m_4.webp",
                        width: size.width,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
