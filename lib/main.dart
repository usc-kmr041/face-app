import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final URLimages1 = [
  "./assets/images/part1/jonathan_image_part_001.jpg",
  "./assets/images/part1/karla_image_part_001.jpg",
  "./assets/images/part1/laura_image_part_001.jpg",
  "./assets/images/part1/ricky_image_part_001.jpg",
  "./assets/images/part1/rob_image_part_001.jpg",
  "./assets/images/part1/rod_image_part_001.jpg",
  "./assets/images/part1/sean_image_part_001.jpg"
];

final URLimages2 = [
  "./assets/images/part2/jonathan_image_part_002.jpg",
  "./assets/images/part2/karla_image_part_002.jpg",
  "./assets/images/part2/laura_image_part_002.jpg",
  "./assets/images/part2/ricky_image_part_002.jpg",
  "./assets/images/part2/rob_image_part_002.jpg",
  "./assets/images/part2/rod_image_part_002.jpg",
  "./assets/images/part2/sean_image_part_002.jpg"
];

final URLimages3 = [
  "./assets/images/part3/jonathan_image_part_003.jpg",
  "./assets/images/part3/karla_image_part_003.jpg",
  "./assets/images/part3/laura_image_part_003.jpg",
  "./assets/images/part3/ricky_image_part_003.jpg",
  "./assets/images/part3/rob_image_part_003.jpg",
  "./assets/images/part3/rod_image_part_003.jpg",
  "./assets/images/part3/sean_image_part_003.jpg"
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimPRO Face App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SimPRO Face App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Column(children: [
          Flexible(
              child: CarouselSlider.builder(
            itemCount: URLimages1.length,
            itemBuilder: ((context, index, realIndex) {
              final URLimage = URLimages1[index];
              return buildImage(URLimage, index);
            }),
            options: CarouselOptions(height: 360),
          )),
          Flexible(
              child: CarouselSlider.builder(
            itemCount: URLimages2.length,
            itemBuilder: ((context, index, realIndex) {
              final URLimage = URLimages2[index];
              return buildImage(URLimage, index);
            }),
            options: CarouselOptions(height: 360),
          )),
          Flexible(
              child: CarouselSlider.builder(
            itemCount: URLimages3.length,
            itemBuilder: ((context, index, realIndex) {
              final URLimage = URLimages3[index];
              return buildImage(URLimage, index);
            }),
            options: CarouselOptions(height: 360),
          )),
        ]));
    //   child: CarouselSlider.builder(
    //   itemCount: URLimages.length,
    //   itemBuilder: ((context, index, realIndex) {
    //     final URLimage = URLimages[index];
    //     return buildImage(URLimage, index);
    //   }),
    //   options: CarouselOptions(height: 360),
    // )));
  }

  Widget buildImage(String URLimage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.grey,
      child: Image.network(
        URLimage,
        fit: BoxFit.cover,
      ));
}
