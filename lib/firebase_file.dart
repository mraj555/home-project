import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FirebaseFile extends StatefulWidget {
  const FirebaseFile({Key? key}) : super(key: key);

  @override
  State<FirebaseFile> createState() => _FirebaseFileState();
}

class _FirebaseFileState extends State<FirebaseFile> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/home-project-82cce.appspot.com/o/How%20to%20take%20catches%20in%20cricket.mp4?alt=media&token=3ad0ed20-96d7-4d0e-bc17-0da1c8fd7eb3')
      ..initialize().then(
            (value) {
          setState(() {});
        },
      )
      ..setLooping(true)
      ..addListener(
            () {
          setState(
                () {},
          );
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _controller!.value.isInitialized
            ? videoPlayerUI()
            : Center(
          child: CircularProgressIndicator()
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                _controller!.value.isPlaying ? _controller!.pause() : _controller!.play();
              },
            );
          },
          child: Icon(_controller!.value.isPlaying ? Icons.pause : Icons.play_arrow),
        ),
      ),
    );
  }

  videoPlayerUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: _controller!.value.aspectRatio,
          child: VideoPlayer(_controller!),
        ),
        Text(
            '${_controller!.value.position} / ${_controller!.value.duration}'),
        VideoProgressIndicator(
          _controller!,
          allowScrubbing: true,
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(
                  () {
                _controller!.value.isPlaying
                    ? _controller!.pause()
                    : _controller!.play();
              },
            );
          },
          icon: Icon(
            _controller!.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
          ),
          label:
          Text(_controller!.value.isPlaying ? 'Play' : 'Pause'),
        ),
      ],
    );
  }

}
