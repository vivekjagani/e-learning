import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../facultie.dart';

class FacultiesCnt extends GetxController {
  final _imagePath = ''.obs;
  get imagePath => _imagePath.value;
  set imagePath(value) => _imagePath.value = value;

  final ImagePicker picker = ImagePicker();
  // Rx<String> imagePath = ''.obs;
  PickedFile? imageFile;
  void getImageValue() async {
    PickedFile? pickedFile = await picker.getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    debugPrint('===> ${pickedFile.toString()}');
    if (pickedFile != null) {
      imageFile = pickedFile;
      imagePath = imageFile!.path;
    }
  }

  List<FacultiesData> facultiesData = [
    FacultiesData(
      image: '',
      degree: '',
      experiance: '',
      email: 'jaganivivek5@gmail.com',
      name: 'vivek',
      number: 1234567890,
    ),
    FacultiesData(
      image: '',
      email: 'devang5@gmail',
      name: 'devang',
      number: 4567891230,
      degree: '',
      experiance: '',
    ),
    FacultiesData(
      image: '',
      email: 'keyur@gmail.com',
      name: 'keyur',
      number: 7891234563,
      degree: '',
      experiance: '',
    ),
    FacultiesData(
      image: '',
      email: 'timir@gmail.com',
      name: 'timir',
      number: 12369698741,
      degree: '',
      experiance: '',
    ),
    FacultiesData(
      image: '',
      email: 'timir@gmail.com',
      name: 'timir',
      number: 12369698741,
      degree: '',
      experiance: '',
    ),
  ].obs;
}
