import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

class Infoboard extends StatelessWidget {
  final SimplePostModel simplePostModel;
  const Infoboard({
    Key? key,
    required this.simplePostModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Column(children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Text(
                            '전시형태',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),

                        //const SizedBox(),
                        Flexible(
                            flex: 1,
                            child: Text(simplePostModel.displayform ?? '')),
                        const SizedBox(),
                      ]),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Text(
                          '작가',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      const SizedBox(),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(simplePostModel.author ?? '')),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Text(
                            '전시공간',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),

                        //const SizedBox(),
                        Flexible(
                            flex: 1, child: Text(simplePostModel.space ?? '')),
                        const SizedBox(),
                      ]),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Text(
                          '작품 스타일',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(simplePostModel.style ?? '')),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Container(
            height: 50,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.loose,
                  child: Text(
                    '지역',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                //SizedBox(),
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(simplePostModel.location ?? '')),
                const Flexible(flex: 1, fit: FlexFit.tight, child: SizedBox()),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
