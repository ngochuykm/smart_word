import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';

class VideoTrimmerScreen extends StatefulWidget {
  @override
  _VideoTrimmerScreenState createState() => _VideoTrimmerScreenState();
}

class _VideoTrimmerScreenState extends State<VideoTrimmerScreen> {
  var _buttonText = 'Record Video';
  VideoPlayerController _videoPlayerController;
  File _video;
  File _storedVideoOne;
  File _storedVideoTwo;
  File _outputFile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            RecordVideoButton(_recordVideo, _buttonText),
            Container(
              height: 500,
              child: Column(
                children: <Widget>[
                  if (_video != null)
                    _videoPlayerController.value.initialized
                        ? AspectRatio(
                            aspectRatio: 16 / 9,
                            child: VideoPlayer(_videoPlayerController),
                          )
                        : Container()
                  else
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.lightBlue,
                        onPressed: () {
                          _pickVideo();
                        },
                        child: Text("View Video From Gallery"),
                      ),
                    ),
                  RaisedButton(
                    child: Text('Splip Video'),
                    onPressed: _splipVideo,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void _splipVideo() async {
    print("splip video begin");
    final appDir = await syspaths.getExternalStorageDirectory();
    String rawDocumentPath = appDir.path;
    print('Current process path: $rawDocumentPath');
    File video = await ImagePicker.pickVideo(source: ImageSource.gallery);
    final path = video.path;
    // String commandToExecute =
    //     '-i $path -ss 00:00:02.0000 -t 3 output.mp4';
    final FlutterFFmpeg _flutterFFmpeg = new FlutterFFmpeg();
    _flutterFFmpeg
        .execute(
            '-i $path -vf drawtext=\'fontfile=/system/fonts/DroidSans.ttf:text="Test":fontsize=40:fontcolor=black: x=20:y=100\' $rawDocumentPath/output12.mp4')
        .then((rc) => print("FFmpeg process exited with rc $rc"));
    print('Current process path: $rawDocumentPath');
    print(video.path);
  }

  void _videoMerger() async {
    final appDir = await syspaths.getApplicationDocumentsDirectory();
    String rawDocumentPath = appDir.path;
    final outputPath = '$rawDocumentPath/output.mp4';

    final FlutterFFmpeg _flutterFFmpeg = new FlutterFFmpeg();

    String commandToExecute =
        '-y -i ${_storedVideoOne.path} -i ${_storedVideoTwo.path} -filter_complex \'[0:0][1:0]concat=n=2:v=1:a=0[out]\' -map \'[out]\' $outputPath';
    _flutterFFmpeg
        .execute(commandToExecute)
        .then((rc) => print("FFmpeg process exited with rc $rc"));
  }

// This funcion will helps you to pick a Video File
  void _pickVideo() async {
    File video = await ImagePicker.pickVideo(source: ImageSource.gallery);
    _video = video;
    _videoPlayerController = VideoPlayerController.file(_video)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  void _recordVideo() async {
    ImagePicker.pickVideo(source: ImageSource.camera)
        .then((File recordedVideo) {
      if (recordedVideo != null && recordedVideo.path != null) {
        setState(() {
          _buttonText = 'Saving in Progress...';
        });
        GallerySaver.saveVideo(recordedVideo.path).then((_) {
          setState(() {
            _buttonText = 'Video Saved!\n\nClick to Record New Video';
            if (_storedVideoOne == null) {
              _storedVideoOne = recordedVideo;
              print('video 1 stored');
            } else {
              _storedVideoTwo = recordedVideo;
              print('video 2 stored');
              _videoMerger();
            }
          });
        });
      }
    });
  }
}

class RecordVideoButton extends StatelessWidget {
  final Function recordVideo;
  final String buttonText;

  RecordVideoButton(this.recordVideo, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          child: SizedBox.expand(
        child: RaisedButton(
          color: Colors.white,
          onPressed: recordVideo,
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
        ),
      )),
      flex: 1,
    );
  }
}
