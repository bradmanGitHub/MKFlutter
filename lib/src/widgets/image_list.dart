import 'package:flutter/material.dart';
import '../model/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        //return Text(images[index].url);
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(8.0),
      //child: Image.network(image.url),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image.url),
            padding: EdgeInsets.only(
              bottom: 8.0,
            ),
          ),
          //Image.network(image.url),
          Text(image.title),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
