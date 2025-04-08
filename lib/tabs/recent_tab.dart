import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: NftCard(imagePath: 'lib/images/apiens_1.jpeg'),
      ),
    );
  }
}
