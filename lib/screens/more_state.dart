// import 'package:flutter/material.dart';
// import 'package:north_indian_culture/data/content.dart';

// class more extends StatefulWidget {
//   const more({super.key});

//   @override
//   State<more> createState() => _moreState();
// }

// class _moreState extends State<more> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body:  GridView.count(  
//                 crossAxisCount: 3,  
//                 crossAxisSpacing: 4.0,  
//                 mainAxisSpacing: 8.0,  
//                 children: List.generate(ministry.length, (index) {  
//                   return Center(  
//                     child: SelectCard(choice: ministry[index]),  
//                   );
//                   }
//                   )  
//                   )
//                   );
//                 }  
//   }


// // class SelectCard extends StatelessWidget {  
// //   const SelectCard({Key key, this.choice}) : super(key: key);  
// //   final Choice choice;  
  
//   @override  
//   Widget build(BuildContext context) {  
//     final TextStyle textStyle = Theme.of(context).textTheme.display1;  
//     return Card(  
//         color: Colors.orange,  
//         child: Center(child: Column(  
//             crossAxisAlignment: CrossAxisAlignment.center,  
//             children: <Widget>[  
//               Expanded(child: Icon(choice.icon, size:50.0, color: textStyle.color)),  
//               Text(choice.title, style: textStyle),  
//             ]  
//         ),  
//         )  
//     );  
//   }  
// }  
