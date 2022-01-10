// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:spotify_sdk/spotify_sdk.dart';
// import 'package:spotify_connect/spotif_auth.dart';

// class SearchSong extends StatefulWidget {
//   const SearchSong({Key? key}) : super(key: key);

//   @override
//   _SearchSongState createState() => _SearchSongState();
//   // _SearchSongState createState() {
//   //   return _SearchSongState();
// }

// class _SearchSongState extends State<SearchSong>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   final _formKey = GlobalKey<FormState>();

//   final Logger _logger = Logger();

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Validation Demo';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: searchSongApp(),
//       ),
//     );
//   }

//   Widget searchSongApp() {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> queueSong(varuable) async {
//     try {
//       await SpotifySdk.queue(
//           spotifyUri: 'spotify:track:58kNJana4w5BIjlZE2wq5m');
//     } on PlatformException catch (e) {
//       setStatus(e.code, message: e.message);
//     } on MissingPluginException {
//       setStatus('not implemented');
//     }
//   }

//   void setStatus(String code, {String? message}) {
//     var text = message ?? '';
//     _logger.i('$code$text');
//   }
// }
