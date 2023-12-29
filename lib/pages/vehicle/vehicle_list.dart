import 'package:flutter/material.dart';
import 'package:testing/design/colors.dart';
import 'package:testing/design/dialog/error_dialog.dart';
import 'package:testing/design/dimensions.dart';
import 'package:testing/design/widgets/accent_button.dart';
import 'package:testing/pages/vehicle/vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_list(context), _updateButton(context)]);
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + padding8) * 2 + height40;

    return ListView.separated(
      itemCount: 15,
      padding: EdgeInsets.only(
          left: padding16,
          top: padding16,
          right: padding16,
          bottom: bottomPadding
      ),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return const VehicleItem();
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(child: Padding(
        padding: const EdgeInsets.all(padding16),
        child: AccentButton(title: 'Update', onTap: () {
          _showErrorDialog(context);
        }),
      )),
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
      return const ErrorDialog(description: 'Server is unavailable. Please try again later.');
    });
  }
}
