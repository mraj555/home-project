// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class YTPlayerIframe extends StatefulWidget {
//   const YTPlayerIframe({Key? key}) : super(key: key);
//
//   @override
//   State<YTPlayerIframe> createState() => _YTPlayerIframeState();
// }
//
// class _YTPlayerIframeState extends State<YTPlayerIframe> {
//   YoutubePlayerController? _controller;
//   String? videoId;
//
//   @override
//   void initState() {
//     videoId = YoutubePlayerController.convertUrlToId('https://www.youtube.com/watch?v=PMNMhyWC6j4');
//     _controller = YoutubePlayerController(
//       initialVideoId: videoId!,
//       params: YoutubePlayerParams(
//         showFullscreenButton: true,
//         mute: true,
//       ),
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: YoutubeValueBuilder(
//           controller: _controller,
//           builder: (context, value) {
//             return Column(
//               children: [
//                 YoutubePlayerIFrame(
//                   controller: _controller,
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
