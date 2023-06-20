import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createPage({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shirin_meva/assets/colors/colors.dart';
import 'package:shirin_meva/assets/constants/icons.dart';
import 'package:shirin_meva/features/ads/presentation/bloc/announcements_bloc/announcements_bloc.dart';
import 'package:shirin_meva/features/ads/presentation/pages/announcements_search_page.dart';
import 'package:shirin_meva/features/ads/presentation/widgets/buy_ads_filter_bottom_sheet.dart';
import 'package:shirin_meva/features/ads/presentation/widgets/buy_tabbar_view.dart';
import 'package:shirin_meva/features/ads/presentation/widgets/sell_ads_filter_bottom_sheet.dart';
import 'package:shirin_meva/features/ads/presentation/widgets/sell_tabbar_view.dart';
import 'package:shirin_meva/features/common/presentation/widgets/w_tab_bar.dart';
import 'package:shirin_meva/features/navigation/presentation/navigator.dart';

class AdsScreen extends StatefulWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  State<AdsScreen> createState() => _AdsScreenState();
}

class _AdsScreenState extends State<AdsScreen> { 
  late ${name}Bloc ${label}Bloc;

  @override
  void initState() {
    super.initState();
    
    ${label}Bloc = context.read<AnnouncementsBloc>()
      ..add(GetBannersEvent())
      ..add(GetPriceRangesEvent())
      ..add(GetSellAnnouncementsListEvent())
      ..add(GetBuyAnnouncementsListEvent());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AnnouncementsBloc, AnnouncementsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => Navigator.of(context, rootNavigator: true).push(
                      fade(page: AnnouncementsSearchPage(type: tabController.index == 0 ? "sell" : "buy")),
                    ),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: whiteSmoke,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.search,
                            colorFilter: const ColorFilter.mode(iron, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Излаш',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      enableDrag: false,
                      isDismissible: false,
                      useRootNavigator: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: dark.withOpacity(.7),
                      builder: (context) =>
                          tabController.index == 0 ? const SellAdsFilterBottomSheet() : const BuyAdsFilterBottomSheet(),
                      isScrollControlled: true,
                    ).then((value) {
                      if (value) {
                        if (tabController.index == 0) {
                          bloc.add(GetSellAnnouncementsListEvent());
                        } else {
                          bloc.add(GetBuyAnnouncementsListEvent());
                        }
                      }
                    });
                  },
                  child: ValueListenableBuilder(
                    builder: (context, _, __) {
                      return Container(
                        height: 40,
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: bloc.hasFilter.value ? mainGreen.withOpacity(.2) : grey3),
                          borderRadius: BorderRadius.circular(8),
                          color: bloc.hasFilter.value ? mainGreen.withOpacity(.12) : null,
                        ),
                        child: SvgPicture.asset(
                          AppIcons.adjustmentsHorizontal,
                          colorFilter:
                              ColorFilter.mode(bloc.hasFilter.value ? mainGreen : greyChateau, BlendMode.srcIn),
                        ),
                      );
                    },
                    valueListenable: bloc.hasFilter,
                  ),
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 56),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: WTabBar(
                  tabController: tabController,
                  tabs: const [Text('Сотиш'), Text('Сотиб олиш')],
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            physics: const BouncingScrollPhysics(),
            children: [
              // Sell
              SellTabBarView(bloc: bloc, state: state),
              // Buy
              BuyTabBarView(bloc: bloc, state: state),
            ],
          ),
        );
      },
    );
  }

  isFilterEnable() {
    if (tabController.index == 0) {
      bloc.hasFilter.value = bloc.sellChildCategory != null;
    } else {
      bloc.hasFilter.value = bloc.buyChildCategory != null;
    }
  }

  @override
  bool get wantKeepAlive => true;
}

    """;

  File('lib/features/$label/domain/repositories/${label}_repository.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
