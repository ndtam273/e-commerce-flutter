import 'package:e_commerce_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import '../../../constants.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: SZ.getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: SZ.getProportionateScreenWidth(15),
        ),
        padding: EdgeInsets.all(8),
        width: SZ.getProportionateScreenWidth(48),
        height: SZ.getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: selectedImage == index ? kPrimaryColor : Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
