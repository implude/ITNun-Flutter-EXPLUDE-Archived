import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/detail_search_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

String _getValueBasesOnSelected(String prefix, List<String>? selected) {
  if (selected == null) {
    return "제한없음";
  } else if (selected.isEmpty) {
    return "$prefix 전체";
  } else {
    final length = selected.length;
    final first = selected[0];

    return length == 1 ? first : "$first 외 ${length - 1}개";
  }
}

Widget _createGridViewWrapper(String prefix, RxList<String> selected,
        List<String> all, RxBool expanded) =>
    Obx(() => _WidgetWrapper(
          expanded: expanded.value,
          onExpand: expanded,
          title: prefix,
          titleValue: Obx(() => Text(
                _getValueBasesOnSelected(prefix, selected),
              )),
          child: _GridViewWidget(
              items: all,
              selectedItems: selected,
              onChanged: selected,
              prefix: prefix),
        ));

class DetailSearch extends GetView<DetailSearchController> {
  const DetailSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FocusUnSetter(
        child: SingleChildScrollView(
          child: AppPadding(
            child: Column(
              children: [
                SizedBox(height: context.heightTransformer(dividedBy: 22.10)),
                const Center(
                  child: Text(
                    "상세 검색",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
                SizedBox(height: context.heightTransformer(dividedBy: 40)),
                ...[
                  _createGridViewWrapper(
                      "취업상태",
                      controller.employmentState,
                      controller.employmentStates,
                      controller.employmentExpanded),
                  _createGridViewWrapper("학력", controller.education,
                      controller.educations, controller.educationExpanded),
                  _createGridViewWrapper("특화분야", controller.specialization,
                      controller.specializations, controller.specialtyExpanded),
                  _createGridViewWrapper("신청기간", controller.applyDate,
                      controller.applyDates, controller.applyDateExpanded),
                  _AgeWidget(controller: controller.ageController),
                  _KeywordWidget(controller: controller.keywordController),
                ].map((e) => Padding(
                      padding: EdgeInsets.only(
                          bottom: context.heightTransformer(dividedBy: 60)),
                      child: e,
                    )),
                SizedBox(
                    height: context.heightTransformer(dividedBy: 844 / 20)),
                RawMaterialButton(
                  onPressed: () {
                    Get.toNamed("/search/detail/result");
                  },
                  child: Container(
                    width: context.widthTransformer(dividedBy: 390 / 100),
                    height: context.heightTransformer(dividedBy: 844 / 50),
                    decoration: BoxDecoration(
                        color: const Color(0xFF3C65F8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "검색",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _KeywordWidget extends StatelessWidget {
  final TextEditingController controller;

  const _KeywordWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _WidgetWrapper(
        title: "키워드",
        titleValue: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: context.widthTransformer(dividedBy: 10),
            maxWidth: context.widthTransformer(dividedBy: 3),
          ),
          child: IntrinsicWidth(
            child: TextField(
              textAlign: TextAlign.end,
              controller: controller,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  isDense: true,
                  hintText: "이곳에 입력",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Color(0xFFD1D1D1))),
            ),
          ),
        ));
  }
}

class _AgeWidget extends StatelessWidget {
  final TextEditingController controller;

  const _AgeWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const border =
        OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFC5D1FD)));

    return _WidgetWrapper(
      title: "나이",
      titleValue: Row(
        children: [
          const Text("만"),
          SizedBox(width: context.widthTransformer(dividedBy: 40)),
          const IntrinsicWidth(
            child: TextField(
              maxLength: 2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  enabledBorder: border,
                  focusedBorder: border,
                  counterText: ""),
            ),
          ),
          SizedBox(width: context.widthTransformer(dividedBy: 40)),
          const Text("세")
        ],
      ),
    );
  }
}

class _GridViewWidget extends StatelessWidget {
  final List<String> items;
  final RxList<String> selectedItems;
  final ValueChanged<List<String>> onChanged;
  final String prefix;

  const _GridViewWidget(
      {Key? key,
      required this.items,
      required this.selectedItems,
      required this.onChanged,
      required this.prefix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidgets = items.map((e) => Obx(() => _GridButton(
        selected: selectedItems.contains(e),
        onChanged: (value) {
          final current = [...selectedItems];

          if (value) {
            current.add(e);
          } else {
            current.remove(e);
          }

          onChanged(current);
        },
        label: e)));

    return Column(
      children: [
        Obx(() => _GridButton(
              selected: selectedItems.isEmpty,
              onChanged: (_) => onChanged([]),
              label: "$prefix 전체",
            )),
        ...itemWidgets.slices(2).map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(
                  children: [
                    Flexible(child: e[0]),
                    if (e.length == 2) ...[
                      const SizedBox(width: 6),
                      Flexible(child: e[1])
                    ]
                  ],
                ),
              ),
            )
      ],
    );
  }
}

class _GridButton extends StatelessWidget {
  final bool selected;
  final ValueChanged<bool> onChanged;
  final String label;

  const _GridButton(
      {Key? key,
      required this.selected,
      required this.onChanged,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!selected),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: selected ? appColor : Colors.transparent,
            border: Border.all(
                color: selected ? appColor : const Color(0xFFC5D1FD)),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: selected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}

class _WidgetWrapper extends StatelessWidget {
  final String title;
  final Widget titleValue;
  final Widget? child;
  final bool? expanded;
  final ValueChanged<bool>? onExpand;

  const _WidgetWrapper(
      {Key? key,
      required this.title,
      required this.titleValue,
      this.child,
      this.expanded,
      this.onExpand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: context.heightTransformer(dividedBy: 50),
            horizontal: context.heightTransformer(dividedBy: 40)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFC5D1FD), width: 3)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.heightTransformer(dividedBy: 40)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    titleValue
                  ]),
            ),
            if (child != null) ...[
              Visibility(
                visible: expanded!,
                child: Column(
                  children: [
                    SizedBox(height: context.heightTransformer(dividedBy: 40)),
                    child!
                  ],
                ),
              ),
              SizedBox(height: context.heightTransformer(dividedBy: 100)),
              IconButton(
                  iconSize: 32,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => onExpand!(!expanded!),
                  icon: Icon(
                    expanded!
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: const Color(0xFFD1D1D1),
                  ))
            ]
          ],
        ));
  }
}
