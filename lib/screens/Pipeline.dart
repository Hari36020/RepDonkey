import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pipeline extends StatefulWidget {
  @override
  _PipelineState createState() => _PipelineState();
}

class _PipelineState extends State<Pipeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pipeline",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Pipeline",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
