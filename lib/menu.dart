import 'package:flutter/material.dart';
import "package:flutter_samples/column_layout.dart";
import "package:flutter_samples/container_layout.dart";
import "package:flutter_samples/elevated_button_sample.dart";
import "package:flutter_samples/icon_button_sample.dart";
import "package:flutter_samples/on_changed_sample.dart";
import "package:flutter_samples/raw_material_button.dart";
import "package:flutter_samples/row_layout.dart";
import "package:flutter_samples/text_button_sample.dart";
import "package:flutter_samples/text_field_sample.dart";
import "demo.dart";
import 'hello_flutter.dart';
import "sample_message.dart";
import "floating_action_button_sample.dart";
import "data_sample.dart";
import "base_layout.dart";
import "center_layout.dart";
import "checkbox_sample.dart";

void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MenuPage(title: 'Select Sample');
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  static const double _buttonWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  createMenuButton(const Demo(), "Demo"),
                  createMenuButton(const HelloFlutter(), "HelloFlutter"),
                  createMenuButton(const SampleMessage(), "SampleMessage"),
                  createMenuButton(const FloatingActionButtonSample(),
                      "FloatingActionButtonSample"),
                  createMenuButton(const DataSample(), "DataSample"),
                  createMenuButton(const BaseLayout(), "BaseLayout"),
                  createMenuButton(const CenterLayout(), "CenterLayout"),
                  createMenuButton(const ContainerLayout(), "ContainerLayout"),
                  createMenuButton(const ColumnLayout(), "ColumnLayout"),
                  createMenuButton(const RowLayout(), "RowLayout"),
                  createMenuButton(
                      const TextButtonSample(), "TextButtonSample"),
                  createMenuButton(
                      const ElevatedButtonSample(), "ElevatedButtonSample"),
                  createMenuButton(
                      const IconButtonSample(), "IconButtonSample"),
                  createMenuButton(const RawMaterialButtonSample(),
                      "RawMaterialButtonSample"),
                  createMenuButton(const TextFieldSample(), "TextFieldSample"),
                  createMenuButton(const OnChangedSample(), "OnChangedSample"),
                  createMenuButton(const CheckboxSample(), "CheckboxSample"),
                ]))));
  }

  createMenuButton(page, String buttonName) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(_buttonWidth)),
          key: null,
          onPressed: onClickNextPage(page),
          child: Text(buttonName)),
    );
  }

  void Function() onClickNextPage(page) {
    return () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    };
  }
}
