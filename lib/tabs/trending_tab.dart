import 'package:flutter/material.dart';
import 'package:nftui/components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({super.key});

  @override
  Widget build(BuildContext context) {
       return NftCard(imagePath: 'lib/images/apiens_2.jpg');
  }
}