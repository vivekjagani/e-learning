import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import 'add_video_cnt.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(AddvideoCnt());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Learing Video'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: cnt.linkController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'Add Link of Video',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: cnt.videoTitleController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'Title',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: cnt.videoSubTitleController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'SubTitle',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  child: const Text(
                    'Add Video',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    cnt.videoDetail.add(VideoModel(
                        image: cnt.linkController.text,
                        subTitle: cnt.videoSubTitleController.text,
                        videoTitle: cnt.videoTitleController.text));
                    Get.back();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
