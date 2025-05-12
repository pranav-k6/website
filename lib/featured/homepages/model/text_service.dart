
import 'package:flutter/material.dart';

class Model {
  final String txt1;
  final String txt2;
  final String imag;

  Model({required this.txt1, required this.txt2,required this.imag});
}

final List<Model> data = [
  Model(
    txt1: 'App Design and Development',
    txt2: 'We design and develop stunning mobile apps for iOS and Android.',
    imag: 'assets/pngtree-smartphone-flat-white-color-icon-computer-devices-pda-vector-png-image_19148094.jpg',
  ),
  Model(
    txt1: 'Web Development',
    txt2: 'We build responsive and user-friendly websites tailored to your needs.',
    imag: 'assets/download (2).jpeg'
  ),
];
