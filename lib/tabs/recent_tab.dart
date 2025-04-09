import 'package:flutter/material.dart';
import 'package:nftui/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'lib/images/apiens_1.jpeg');
  }
}
