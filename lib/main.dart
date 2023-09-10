import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:particles_fly/particles_fly.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme(context),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FocusNode _focusNode = FocusNode();
  final String _keyPressed = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Flutter Base',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ParticlesFly(
          height: MediaQuery.of(context).size.height * 5.0,
          width: MediaQuery.of(context).size.width,
          particleColor: Colors.orange,
          lineColor: Colors.orange,
          enableHover: true,
          connectDots: true,
          numberOfParticles: 300,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final FocusNode _focusNode = FocusNode();
//   String _keyPressed = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Web Keyboard Listener'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Pressed key: $_keyPressed'),
//             const SizedBox(height: 20),
//             RawKeyboardListener(
//               focusNode: _focusNode,
//               onKey: (RawKeyEvent event) {
//                 if (event is RawKeyDownEvent) {
//                   setState(() {
//                     _keyPressed = event.logicalKey.keyLabel;
//                   });
//                 }
//               },
//               child: const TextField(
//                 decoration: InputDecoration(labelText: 'Focus and type here'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class AppTheme {
  static ThemeData defaultTheme(BuildContext context) {
    return ThemeData(
      fontFamily: "DotGothic16",
    );
  }
}
