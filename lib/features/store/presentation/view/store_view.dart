import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopify_integrated_app/core/enum/status_type.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/presentation/cubit/product_cubit.dart';
import 'package:shopify_integrated_app/features/product/presentation/widget/product_item_widget.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  late List<ProductDataDto> products = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await context.read<ProductCubit>().getProducts();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state.getProductsStatus == StatusType.loaded) {
          products = state.products ?? [];
        } else if (state.getProductsStatus == StatusType.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errorMessage ?? LocaleKeys.something_went_wrong.tr(),
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        final isLoading = state.getProductsStatus == StatusType.loading;
        return Scaffold(
          appBar: AppBar(title: const Text(LocaleKeys.store).tr()),
          body: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: () async {
                  context.read<ProductCubit>().resetState(
                    (state) => state.copyWith(getProductsStatus: StatusType.initial),
                  );
                  await context.read<ProductCubit>().getProducts();
                },
              ),
              (!isLoading && products.isEmpty)
                  ? SliverToBoxAdapter(child: Center(child: Text(LocaleKeys.not_available).tr()))
                  : SliverSafeArea(
                      sliver: SliverPadding(
                        padding: const EdgeInsets.all(20),
                        sliver: Builder(
                          builder: (context) {
                            final grid = SliverGrid.builder(
                              itemBuilder: (context, index) {
                                final product = isLoading ? null : products[index];
                                return ProductItemWidget(product: product);
                              },
                              itemCount: isLoading ? 12 : products.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                            );
                            if (isLoading) {
                              return SliverToBoxAdapter(
                                child: Shimmer.fromColors(
                                  baseColor: Theme.of(context).colorScheme.surfaceContainer,
                                  highlightColor: Theme.of(context).colorScheme.surfaceContainerHigh,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    child: CustomScrollView(
                                      physics: const NeverScrollableScrollPhysics(),
                                      slivers: [grid],
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return grid;
                            }
                          },
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
