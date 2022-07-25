import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;

    setState(() {});

    Future.delayed(const Duration(seconds: 3));

    addFive();

    isLoading = false;
    setState(() {});
  }

  void addFive() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Stack(children: [
        ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (BuildContext context, int index) {
              return Image(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=${imagesIds[index]}'));
            }),
        Positioned(
            bottom: 40,
            left: size.width * 0.5 - 30,
            child: const _LoadingIcon())
      ]),
    ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(100)),
        child: const CircularProgressIndicator(
          color: AppTheme.primary,
        ));
  }
}
