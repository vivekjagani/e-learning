import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddvideoCnt extends GetxController {
  TextEditingController videoTitleController = TextEditingController();
  TextEditingController videoSubTitleController = TextEditingController();
  TextEditingController linkController = TextEditingController();

  final _getImage = ''.obs;
  get getImage => _getImage.value;
  set getImage(value) => _getImage.value = value;

  List<VideoModel> videoDetail = [
    VideoModel(
        image: 'https://www.youtube.com/watch?v=cBXcU8Ev7j0',
        subTitle: 'data',
        videoTitle: 'data'),
    VideoModel(
        image: 'https://www.youtube.com/watch?v=cBXcU8Ev7j0',
        subTitle: 'data',
        videoTitle: 'data'),
    VideoModel(
        image: 'https://www.youtube.com/watch?v=cBXcU8Ev7j0',
        subTitle: 'data',
        videoTitle: 'data')
  ].obs;
}

class VideoModel {
  String videoTitle;
  String subTitle;
  String image;

  VideoModel(
      {required this.image, required this.subTitle, required this.videoTitle});
}
