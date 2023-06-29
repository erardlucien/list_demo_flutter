import 'package:flutter/material.dart';

class ListContainer {
  final Image _image;
  final List<Text> _titleList;
  final IconData _icon;
  final Text _text;
  final Text _starNumber;
  ListContainer(this._image, this._titleList, this._icon, this._text, this._starNumber);
  Image image() => _image;
  List<Text> titleList() => _titleList;
  IconData icon() => _icon;
  Text text() => _text;
  Text startNumber() => _starNumber;
}
