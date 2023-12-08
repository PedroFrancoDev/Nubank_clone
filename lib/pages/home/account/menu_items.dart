import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(icon: MdiIcons.clover, title: "Área Pix", isFirst: true),
            _itemMenu(icon: MdiIcons.barcode, title: "Pagar"),
            _itemMenu(icon: MdiIcons.cash, title: "Transferir"),
            _itemMenu(icon: MdiIcons.creditCard, title: "Recarga"),
            _itemMenu(icon: MdiIcons.heartOutline, title: "Doação"),
            _itemMenu(icon: MdiIcons.barcode, title: "Pagar"),
            _itemMenu(icon: MdiIcons.cash, title: "Transferir"),
            _itemMenu(icon: MdiIcons.creditCard, title: "Recarga"),
            _itemMenu(icon: MdiIcons.heartOutline, title: "Doação"),
          ],
        ),
      ),
    );
  }

  Widget _itemMenu(
      {required IconData icon, required String title, bool? isFirst}) {
    return Container(
      padding: EdgeInsets.only(
        right: 16,
        left: (isFirst ?? false) ? 20 : 0,
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: yellow20,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Icon(
                size: 23,
                icon,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
