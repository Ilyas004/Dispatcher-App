import 'package:flutter/material.dart';
import 'package:testing/design/colors.dart';
import 'package:testing/design/dimensions.dart';
import 'package:testing/design/images.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        margin: EdgeInsets.zero,
        color: surfaceColor,
        elevation: elevation006,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius8)),
        child:
            InkWell(
              borderRadius: BorderRadius.circular(radius8),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: padding8, right: padding16),
                child: Row(children: <Widget>[vehicleMotorcycleImage, _title(), _state()]),
              ),
            ),
      ),
    );
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.only(left: padding6, right: padding6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'BMW GS-7638',
            style: TextStyle(
                color: secondaryColor,
                fontSize: fontSize14,
                fontWeight: FontWeight.w600
            ),
          ),
          if (false)
          Text(
            'No driver',
            style: TextStyle(
                color: secondaryVariantColor,
                fontSize: fontSize14,
                fontWeight: FontWeight.w400
            ),
          )
          else
          Text.rich(
            style: TextStyle(fontSize: fontSize14),
            TextSpan(
              children: [
                TextSpan(
                  text: 'Driver: ',
                    style: TextStyle(
                    color: secondaryVariantColor,
                    fontWeight: FontWeight.w400
                  )
                ),
                TextSpan(
                    text: 'Paul ',
                    style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600
                    )
                )
              ]
            )
          )
        ],
      ),
    );
  }

  Widget _state() {
    return Container();
  }
}
