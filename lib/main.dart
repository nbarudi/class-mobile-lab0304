import 'package:flutter/material.dart';
import 'package:lab0304/TweetWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lab 03 and 04'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> dummyNames = ["National Geographic", "Neil deGrasse Tyson"];
List<String> dummyShortNames = ["@NatGeo", "@neiltyson"];
List<String> dummyTime = ["4h", "10d"];
List<String> dummyDesc = [
  "A European jackal dives at a Eurasian magpie who got too close to the jackal's "
      "recent catch in this photo by Your Shot photographer Sergey Zlatkov",
"A Lunar Eclipse that Flat-Earthers have never seen."];
List<String> dummyImage = ["http://i.bungo.ca/u/lbDifO.png", "http://i.bungo.ca/u/NHdAuH.png"];
List<String> dummyIcons = ["http://i.bungo.ca/u/aK3lIQ.png", "http://i.bungo.ca/u/0whVcK.png"];
List<int> dummyComment = [1423, 1058];
List<int> dummyRetweet = [167, 2975];
List<int> dummyLikes = [3568, 23058];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.separated(itemBuilder: (BuildContext context, int index) {
          return TweetWidget(
              dummyNames[index],
              dummyShortNames[index],
              dummyTime[index],
              dummyDesc[index],
              dummyImage[index],
              dummyIcons[index],
              dummyComment[index],
              dummyRetweet[index],
              dummyLikes[index]
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(), itemCount: dummyNames.length),
        );
  }
}



