// import 'package:flutter/material.dart';
// import 'package:latquiz/vehicle-data.dart';

// class dashboard extends StatelessWidget {
//   const dashboard({super.key, required String user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mobil Cars'),
//         automaticallyImplyLeading: false,
//       ),
//       floatingActionButton: new FloatingActionButton(
//         child: new Icon(Icons.logout),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//       body: GridView.builder(
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemCount: vehicleList.length,
//         itemBuilder: (context, index) {
//           final Vehicle mobil = vehicleList[index];
//           return Card(
//             child: Column(
//               children: [
//                 Image.network(
//                   mobil.imageUrls[0],
//                 ),
//                 Text(mobil.name),
//                 Text(mobil.type),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
