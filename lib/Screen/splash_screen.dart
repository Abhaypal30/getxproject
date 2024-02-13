import 'package:flutter/material.dart';
import 'package:getxproject/Controller/fake_api.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
final controller =  FakeApiCalling();

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
        Column(
          children: [
          // Container(
          //   margin:const EdgeInsets.all(30),
          //   height: 350,
          //   width: 300,
          //   color: containercolor,
            
            
          // )

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(onPressed: () {
                  controller.getdetails();
                  
                }, child: const Text("Press here",style: TextStyle(fontSize: 21),)),
              ),
            ],
          ),
          FutureBuilder(
            future: controller.getdetails(),
            builder: (context,snapshot) {
              var data = snapshot.data;
              return Expanded(
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                  return  Column(
                    children: [
                      // CircleAvatar(
                      //   radius: 45,
                      //   child: Image.network("${data[index].avatar}")
                      // )
                      Text("${data[index].firstname}")
                      
                    ],
                  );
                },),
              );
            }
          )
          ],
        )
    //      Container(
    //   child: const Image(image: AssetImage("assets/images/natural.jpg")),
    // )
    );
  }
}
