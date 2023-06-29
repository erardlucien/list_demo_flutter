import 'package:demo04/list_container.dart';
import 'package:flutter/material.dart';

class ListWrapper extends StatefulWidget {
  const ListWrapper({super.key});
  @override
  State<ListWrapper> createState() => ListState();
}

class ListScaffold extends State<ListWrapper> {
  final ListContainer _list;
  ListScaffold(this._list);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.lightBlue[50],
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 4, left: 2),
            child: _list.image(),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 4, bottom: 4),
                    child: _list.titleList()[0],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4, bottom: 4),
                    child: _list.titleList()[1],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 160),
                child: Icon(
                  _list.icon(),
                  size: 25,
                  color: Colors.amberAccent,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: _list.startNumber(),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: _list.text(),
          ),
        ],
      ),
    );
  }
}

List<Widget> _buildingList(List<Widget> list, BuildContext context) {
  list.add(ListScaffold(ListContainer(
          Image.asset(
            'images/image1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          [const Text('Image 1'), const Text('Autor: Lucien Erard')],
          Icons.star,
          const Text('This image was taken from a balkon'),
          const Text('23')))
      .build(context));
  list.add(ListScaffold(ListContainer(
          Image.asset(
            'images/image2.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          [const Text('Image 2'), const Text('Autor: Lucien Erard')],
          Icons.star,
          const Text('This image was taken from a balkon'),
          const Text('3')))
      .build(context));
  list.add(ListScaffold(ListContainer(
          Image.asset(
            'images/image3.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          [const Text('Image 3'), const Text('Autor: Lucien Erard')],
          Icons.star,
          const Text('This image was taken from a balkon'),
          const Text('13')))
      .build(context));
  list.add(ListScaffold(ListContainer(
          Image.asset(
            'images/image4.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          [const Text('Image 4'), const Text('Autor: Lucien Erard')],
          Icons.star,
          const Text('This image was taken from a balkon'),
          const Text('9')))
      .build(context));
  list.add(ListScaffold(ListContainer(
          Image.asset(
            'images/image5.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          [const Text('Image 5'), const Text('Autor: Lucien Erard')],
          Icons.star,
          const Text('This image was taken from a balkon'),
          const Text('49')))
      .build(context));
  list.add(ListScaffold(ListContainer(
          Image.asset(
            'images/image6.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          [const Text('Image 6'), const Text('Autor: Lucien Erard')],
          Icons.star,
          const Text('This image was taken from a balkon'),
          const Text('19')))
      .build(context));

  return list;
}

class ListState extends State<ListWrapper> {
  List<Widget> _list = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    _list = _buildingList(_list, context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: _list,
      ),
    );
  }
}
