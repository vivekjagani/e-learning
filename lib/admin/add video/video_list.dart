import 'package:e_learning/admin/add%20video/add_video_cnt.dart';
import 'package:e_learning/admin/add%20video/add_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoList extends StatelessWidget {
  const VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(AddvideoCnt());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video List'),
      ),
      body: Column(
        children: [
          SizedBox(
              height: Get.height * 0.79,
              child: Obx(
                () => ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        height: 70,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                          title: Text(cnt.videoDetail[index].videoTitle),
                          subtitle: Text(cnt.videoDetail[index].subTitle),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () {
                              cnt.videoDetail.remove(cnt.videoDetail[index]);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: cnt.videoDetail.length,
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: SizedBox(
                width: Get.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    child: const Text(
                      'Add video',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Get.to(const VideoScreen());
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
