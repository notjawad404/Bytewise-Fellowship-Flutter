import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController _controller;
  late Future<void> _videofuture;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4");
    _videofuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(10.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(
          Icons.videocam,
          size: 50.0,
        ),
        centerTitle: true,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black54,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.home,
              size: 50.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                InteractiveViewer(
                  maxScale: 10,
                  child: Image.asset(
                    'assets/welcome.jpg',
                  ),
                ),
                const Text("Video"),
                FutureBuilder(
                  future: _videofuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
