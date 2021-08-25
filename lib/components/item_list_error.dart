import 'package:flutter/material.dart';
import 'package:flutter_freezed_riverpod/controllers/item_list_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemListError extends ConsumerWidget {
  final String message;

  const ItemListError({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Retry'),
            onPressed: () {
              ref
                  .read(itemListControllerProvider.notifier)
                  .retrieveItems(isRefreshing: true);
            },
          )
        ],
      ),
    );
  }
}
