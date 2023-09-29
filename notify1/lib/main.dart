import 'login.dart';
import 'splash_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'date_picker.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          title: const Text("Event Detail Page"),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/event1.jpg'),
             const SizedBox(height: 30,),
             const Text("Event Name:",style:TextStyle(fontSize: 30),),
              const SizedBox(height: 10,),
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 30),
               child: Center(
                 child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter event name",
                      suffixIcon: Icon(Icons.event_available_rounded,color: Colors.black,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue,width:5 ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),),),),),
              const SizedBox(height: 30,),
               Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 30),
                child:  Row(
                  children:[
                     Flexible(child: TextField(decoration: InputDecoration(hintText: "Date",
                      suffixIcon: IconButton( icon:  Icon(Icons.calendar_month_outlined,color: Colors.black,),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return DatePickerExample();
                      }));},),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue,width:5 ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),),),),
                     const SizedBox(width: 30,),
                    Flexible(child: TextField(decoration: InputDecoration(hintText: "Time",
                        suffixIcon: IconButton( icon: const Icon(Icons.access_time_outlined,color: Colors.black,),onPressed: (){print('Search button pressed');},),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue,width:5 ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),),),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: "Event description",
                    hintStyle: TextStyle(color: Colors.black38),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),
                  child: const Text("Send Notification"),
                  onPressed: (){
                    print("Button Pressed");
                  }),],
          ),
        ) ,
      );
  }
}







