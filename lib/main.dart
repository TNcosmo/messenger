import 'package:flutter/material.dart';
import 'package:messenger/messages.dart';
import 'package:messenger/person.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AAAAVkxPoCA:APA91bG9S2i-HeQfnf2KoqzJj8ul7AoN8cXlRFqcZv8FcZnkmzdtLYp6dAtDkV_yGngtEna6ezDdH6r1MhhN5pLCKCy23fAvjrR_vBdTb9Kbu6WsVf1ylsJq63zHU_EmzB0Eytzqmijk",
      appId: "1:370647474208:android:f1b7a74bfcf6dc5dfe1c45",
      messagingSenderId: "370647474208",
      projectId: "messenger-22dfd",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  static List<String> name = ['Ania','Sofia'];
  static List<String> received = ['geh ficken du huan','nah geh du dich ficken'];
  static List<String> sent = ['ka was ich grad mach','help pls im lost'];
  final List<person> namedata = List.generate(name.length, (index) => person('${name[index]}','${received}','${sent}'));
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
       title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: namedata.length,
          itemBuilder: (context, index){
            return Card(
            child: ListTile(
            title: Text(namedata[index].name),
              onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>messages(Person: namedata[index],)));
              },
            ),
            );
          }
      )
    );
  }
}
