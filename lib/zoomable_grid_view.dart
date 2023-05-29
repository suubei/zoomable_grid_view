library zoomable_grid_view;

import 'package:flutter/widgets.dart';

class ZoomableGridView extends StatefulWidget {
  final SliverGridDelegateWithFixedCrossAxisCount gridDelegate;
  final SliverChildBuilderDelegate childrenDelegate;

  ZoomableGridView({
    Key? key,
    required this.gridDelegate,
    required this.childrenDelegate,
  })  : assert(gridDelegate.crossAxisCount.isOdd),
        super(key: key);

  @override
  State<ZoomableGridView> createState() => _ZoomableGridViewState();
}

class _ZoomableGridViewState extends State<ZoomableGridView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: widget.gridDelegate,
          delegate: widget.childrenDelegate,
        ),
      ],
    );
  }
}
