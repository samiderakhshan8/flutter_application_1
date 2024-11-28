import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class LoadCountentView extends StatefulWidget {
  const LoadCountentView({super.key});

  @override
  State<LoadCountentView> createState() => _LoadCountentViewState();
}

class _LoadCountentViewState extends State<LoadCountentView> {
  FocusNode pelak = FocusNode();
  FocusNode phoneNumber = FocusNode();

  // final _imagePicker = ImagePicker();
  XFile? myimage;
  Future<XFile?> setNewImage() async {
    final ImagePicker picker = ImagePicker();
    final result = await picker.pickImage(source: ImageSource.camera);
    return result;
  }

  @override
  void initState() {
    super.initState();
    pelak.addListener(() {
      setState(() {});
    });
    phoneNumber.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: 300,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  //image: _image != null
                  //  ? DecorationImage(
                  //     image: FileImage(
                  //     File(_image!.path),
                  //   ),
                  //   fit: BoxFit.cover,
                  // )
                  // : null,
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: myimage == null
                    ? null
                    : Image.file(
                        File(myimage!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () async {
                final newImage = await setNewImage();
                // _image =
                //     await _imagePicker.pickImage(source: ImageSource.camera);
                setState(() {
                  if (newImage != null) {
                    myimage = newImage;
                  }
                });
              },
              child: const Text(
                'دوربین',
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: TextField(
                style: const TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
                focusNode: pelak,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  labelText: 'شماره پلاک',
                  labelStyle: TextStyle(
                      fontSize: 22,
                      color: pelak.hasFocus ? Colors.white : Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(width: 5, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: TextField(
                style: const TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
                focusNode: phoneNumber,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  labelText: ' شماره تماس',
                  labelStyle: TextStyle(
                      fontSize: 22,
                      color:
                          phoneNumber.hasFocus ? Colors.white : Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(width: 5, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 45,
              width: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue
                        .withOpacity(0.5), // Shadow color with opacity
                    spreadRadius: 5, // Spread value
                    blurRadius: 10, // Blur value
                    offset: const Offset(0, 0), // Offset (horizontal, vertical)
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "ثبت خودرو",
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
