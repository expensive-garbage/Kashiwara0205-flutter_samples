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
import "switch_sample.dart";
import 'radio_btn_sample.dart';
import "dropdown_btn_sample.dart";
import "popup_menu_button.dart";
import "slider_sample.dart";
import "dialog_sample.dart";
import "alert_btn_sample.dart";
import "simple_dialog_sample.dart";
import "customize_app_bar.dart";
import "bottom_navigation_bar.dart";
import "list_view_sample.dart";
import "listt_itle_sample.dart";
import "single_child_scroll_view_sample.dart";
import "navigator_sample.dart";
import "pass_value_sample.dart";
import "tab_sample.dart";
import "bottom_tabs_sample.dart";
import "drawer_sample.dart";
import "painter_sample.dart";
import "painter_circle_sample.dart";
import "painter_line_sample.dart";
import "painter_text_sample.dart";
import "painter_image_sample.dart";
import "painter_path_sample.dart";
import "painter_translate_sample.dart";
import "painter_click_sample.dart";
import "painter_ui_widget_sample.dart";

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
  static const double _buttonWidth = 500;

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
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  createMenuButton(const SwitchSample(), "SwitchSample"),
                  createMenuButton(const RadioBtnSample(), "RadioBtnSample"),
                  createMenuButton(
                      const PopupMenuButtonSample(), "PopupMenuButtonSample"),
                  createMenuButton(const RadioBtnSample(), "RadioBtnSample"),
                  createMenuButton(const NavigatorSample(), "NavigarotSample"),
                  createMenuButton(
                      const DropdownBtnSample(), "DropdownBtnSample"),
                  createMenuButton(const SliderSample(), "SliderSample"),
                  createMenuButton(const DialogSample(), "DialogSample"),
                  createMenuButton(const SingleChildScrollViewSample(),
                      "SingleChildScrollViewSample"),
                  createMenuButton(const ListTitleSample(), "ListTitleSample"),
                  createMenuButton(
                      const SimpleDialogSample(), "SimpleDialogSample"),
                  createMenuButton(const CustomizeAppBar(), "CustomizeAppBar"),
                  createMenuButton(const ListViewSample(), "ListViewSample"),
                  createMenuButton(
                      const BottomuNavigationBar(), "BottomuNavigationBar"),
                  createMenuButton(const PassValueSample(), "PassValueSample"),
                  createMenuButton(const TabSample(), "TabSample"),
                  createMenuButton(const BottomTabSample(), "BottomTabSample"),
                  createMenuButton(const DrawerSample(), "DrawerSample"),
                  createMenuButton(
                      const PainterCircleSample(), "PainterCircleSample"),
                  createMenuButton(
                      const PainterClickSample(), "PainterClickSample"),
                  createMenuButton(
                      const PainterLineSample(), "PainterLineSample"),
                  createMenuButton(const PainterSample(), "PainterSample"),
                  createMenuButton(
                      const PainterPathSample(), "PainterPathSample"),
                  createMenuButton(
                      const PainterTranslateSample(), "PainterTranslateSample"),
                  createMenuButton(
                      const PainterImageSample(), "PainterImageSample"),
                  createMenuButton(
                      const PainterTextSample(), "PainterTextSample"),
                  createMenuButton(
                      const PainterUiWidgetSample(), "PainterUiWidgetSample"),
                  createMenuButton(
                      const AlertDialogSample(), "AlertDialogSample"),
                ]))));
  }

  createMenuButton(page, String buttonName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(_buttonWidth)),
          key: null,
          onPressed: onClickNextPage(page),
          child: Text(buttonName, style: const TextStyle(fontSize: 28))),
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
