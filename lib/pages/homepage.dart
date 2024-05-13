import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  static String routeName = '/';

  Future getTeams() async {
    var url = Uri.https('api.balldontlie.io', '/v1/teams');
    var headers = {'Authorization': 'cbbaec0d-989f-49ec-ade4-8e96945f3238'};
    var response = await http.get(url, headers: headers);

    print(response.body);
  }



  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    getTeams();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NBA',
        ),
        backgroundColor: Colors.cyan,
        // centerTitle: false
        actions: [
          TextButton(onPressed: () {}, child: Icon(Icons.search)),
        ],
      ),

    );
  }
}
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class HomePage extends StatefulWidget {
//   static String routeName = '/';
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<dynamic> teams = [];
//
//   @override
//   void initState() {
//     super.initState();
//     getTeams();
//   }
//
//   Future<void> getTeams() async {
//     try {
//       var response = await http.get(
//         Uri.parse('https://api.balldontlie.io/v1/teams'),
//         headers: {
//           'Authorization': 'cbbaec0d-989f-49ec-ade4-8e96945f3238',
//         },
//       );
//
//       if (response.statusCode == 200) {
//         setState(() {
//           teams = json.decode(response.body)['data'];
//         });
//       } else {
//         throw Exception('Failed to load teams');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('NBA'),
//         backgroundColor: Colors.cyan,
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: Icon(Icons.search),
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: teams.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(teams[index]['full_name']),
//               subtitle: Text(teams[index]['abbreviation']),
//               // You can add more information here as needed
//               // For example: subtitle: Text(teams[index]['city']),
//               onTap: () {
//                 // Handle tap on team item
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
