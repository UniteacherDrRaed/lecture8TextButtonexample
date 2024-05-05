import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const ExampleButtons(),
    );
  }
}

class ExampleButtons extends StatefulWidget {
  const ExampleButtons({super.key});

  @override
  State<ExampleButtons> createState() => _ExampleButtonsState();
}

class _ExampleButtonsState extends State<ExampleButtons> {
 final _cityController=TextEditingController();
 String _city="";
 @override
  void dispose() {
   _cityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lime,),
      body: Padding(
        padding:const  EdgeInsets.all(21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: _cityController,
            decoration: InputDecoration(
              hintText: "Enter your City",
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2,color: Colors.lime),
                borderRadius: BorderRadius.circular(25),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2,color: Colors.amber),
                borderRadius: BorderRadius.circular(25),
              )
            ),),
          TextButton(style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.red,
              elevation: 21,
              shadowColor: Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 25),
            ),
              onPressed: (){setState(() {
              _city=_cityController.text;});},
            child: const Text("city")),
        Text("Your City is $_city")],
      ),),
    );
  }
}
