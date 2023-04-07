import 'package:e_learning/dashboard_screens/screens/all%20cource/yt_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../admin/add video/add_video_cnt.dart';

class AllCource extends StatelessWidget {
  const AllCource({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videoCnt = Get.put(AddvideoCnt());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Text(
            'All Cource',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: Obx(
          () => ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: InkWell(
                  onTap: () {
                    Get.to(() => YoutubeVideoPlayer(
                          url: videoCnt.videoDetail[index].image,
                        ));
                  },
                  child: Container(
                    height: 60,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      title: Text(
                        videoCnt.videoDetail[index].videoTitle,
                        style: const TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        videoCnt.videoDetail[index].subTitle,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: videoCnt.videoDetail.length,
          ),
        ));
  }
}
