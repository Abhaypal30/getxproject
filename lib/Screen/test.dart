import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Get_Main_Controller/api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// bool notification = false;
// int x = 30;

// double opacity = .9;
bool notification = false;
// List<String> fruitlist = ['open', 'block', 'Row', 'Machine', 'jamol'];
// List fruitcolor = [];

class _HomePageState extends State<HomePage> {
  final Examplegetx examplegetx = Get.put(Examplegetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Example"),
      ),
      body: const Column(
        children: [
          // value incress ; using Getx
          // Row(
          //   mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
          //   children: [
          //     const Text("ABC"),
          //     Obx(() =>Switch(value:examplegetx.notification.value, onChanged: (value) {
          //       examplegetx.notifications(value);
          //         print("Notification");

          //     },) )

          //   ],
          // ),
          // Center(
          //   child: Text(x.toString()),
          // ),
          // FloatingActionButton(onPressed: () async {
          //   x++;
          //   print("Addition");
          //   setState(() {

          //   });

          // },)
          // Opacity color using Getx $ Slider;
          // Obx(() => Container(
          //   height: 250,
          //   width: 250,
          //   color: Colors.green.withOpacity(examplegetx.opacity.value),
          // ), ),
          // Obx(() => Slider(value: examplegetx.opacity.value, onChanged: (value){
          //   examplegetx.opacityColor(value);

          // }))

          // Notification Changes using switch ;
          // Obx(() =>Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     const Text("Notificatio"),

          //     Switch(value: examplegetx.nootification.value, onChanged: (value) {
          //       examplegetx.nootifications(value);
          //       print("Notification changes");

          //     },)
          //   ],
          // ) )
          // LINE AND DISLIKE
          // Obx(() => Expanded(
          //   child: ListView.builder(
          //       itemCount: examplegetx.fruitlist.length,
          //       itemBuilder: (context, index) {
          //         return ListTile(
          //           onTap: () {
          //             setState(() {

          //             });
          //             if (examplegetx.fruitcolor
          //                 .contains(examplegetx.fruitlist[index].toString())) {
          //               examplegetx.removefruite(
          //                   examplegetx.fruitlist[index].toString());
          //             } else {
          //               examplegetx
          //                   .addfruite(examplegetx.fruitlist[index].toString());
          //             }
          //           },
          //           title: Card(
          //               child: Text(examplegetx.fruitlist[index].toString())),
          //           trailing:Obx(() =>  Icon(
          //             Icons.favorite,
          //             color: examplegetx.fruitcolor
          //                     .contains(examplegetx.fruitlist[index].toString())
          //                 ? Colors.red
          //                 : Colors.white,
          //           ),)
          //         );
          //       }),
          // )),

          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Column(
          //     children: [
          //       TextFormField(
          //         controller: examplegetx.email,
          //         decoration: const InputDecoration(
          //           hintText: "email",
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 20,
          //       ),
          //       TextFormField(
          //         controller: examplegetx.password,
          //         decoration: const InputDecoration(
          //           hintText: "password",
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 20,
          //       ),
          //       Center(
          //         child: Container(
          //           height: 45,
          //           width: 110,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(15),
          //             color: Colors.indigo,
          //           ),
          //           child: TextButton(
          //               onPressed: () {
          //                 examplegetx.loginuser();
          //               },
          //               child: const Text(
          //                 "Login",
          //                 style: TextStyle(fontSize: 20, color: Colors.white),
          //               )),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
