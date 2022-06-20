import 'package:flutter/material.dart';
import 'package:transaction_card/theme.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width - 2 * defaultMargin;
    String state = "UNPAID";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Center(
          child: Container(
            width: width,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: boxShadow
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: boxShadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/img_product.png")
                                )
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width - 50 - 15 - 30,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Nike Sneaker Red Ruby Pro",
                                  style: blackFontStyle.copyWith(fontSize:13, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(height: 3),
                              Container(
                                width: width - 50 - 15 - 30,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1 Pcs",
                                  style: blackFontStyle.copyWith(fontSize:12, fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width/2 - 60,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "ID transaction",
                                  style: greyFontStyle.copyWith(fontSize:11, fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: width/2 - 60,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "INV213214845423",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: blackFontStyle.copyWith(fontSize:12, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: width/2 - 20,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Date Transaction",
                                  style: greyFontStyle.copyWith(fontSize:11, fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: width/2 - 20,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "14:55 | 18 June 2022",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: blackFontStyle.copyWith(fontSize:12, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width/2 - 40,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Total Belanja:",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: greyFontStyle.copyWith(fontSize:11, fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(height: 2),
                              Container(
                                width: width/2 - 40,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  NumberFormat.currency(
                                    locale: 'id_ID',
                                    decimalDigits: 0,
                                    symbol: 'Rp',
                                  ).format(1450000),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: blackFontStyle.copyWith(color: Colors.red, fontSize:13, fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                          (state == "UNPAID")
                              ? ButtonCard("Lakukan pembayaran", 165, Colors.red, isActive: true, padding: 6, isBold: false, fontSize: 11, radius: 30, backColor: Colors.grey.shade50, isReadable: false,)
                              : ButtonCard(state, 165, Colors.green, isActive: true, padding: 8, isBold: false, fontSize: 11, radius: 30, backColor: Colors.grey.shade50, isReadable: false,)
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class ButtonCard extends StatefulWidget {
  final String text;
  final Color color;
  final bool isActive;
  final double width;
  final double padding;
  final double paddingHorizontal;
  final double radius;
  final Function? onPressed;
  final ValueChanged<String> ?onChanged;
  final String? iconPath;
  final double fontSize;
  final Color? fontColor;
  final Color? backColor;
  final double iconSize;
  final bool isBordered;
  final IconData? iconData;
  final Color? borderColor;
  final bool isBold;
  final double marginIcon;
  final bool isReadable;
  final bool isHover;
  final bool isLoading;

  ButtonCard(this.text, this.width, this.color, {this.padding = 10, this.paddingHorizontal = 0, this.isLoading = false, this.isHover = true, this.fontSize = 13, this.fontColor, this.isReadable = true, this.marginIcon = 12, this.iconSize = 20, this.backColor, this.isBold = true, this.radius = 5, this.onPressed, this.onChanged, this.borderColor, this.iconData, this.iconPath, this.isActive = false, this.isBordered = true});

  @override
  _ButtonCardState createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {

  bool _isActive = false;
  Color? fontColor;

  @override
  void initState() {
    super.initState();

    _isActive = widget.isActive;

  }

  @override
  Widget build(BuildContext context) {

    fontColor = (widget.fontColor != null) ? widget.fontColor : widget.color;

    int length = (widget.text.length < 5) ? widget.text.length * 20 : widget.text.length * 10;

    return Container(
        width: (widget.width != null) ? widget.width : length.toDouble(),
        padding: EdgeInsets.zero,
        child: FlatButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            if(widget.isReadable == true){

              if(widget.isHover == true){
                setState(() {
                  _isActive = !_isActive;
                });

                new Future.delayed(const Duration(milliseconds: 200), () {

                  if(widget.isLoading == true){

                  } else {
                    setState(() {
                      _isActive = !_isActive;
                    });
                  }
                });
              } else {
                setState(() {
                  _isActive = widget.isActive;
                });
              }

              if(widget.onPressed != null){
                widget.onPressed!();
                setState(() {
                  _isActive = widget.isActive;
                });
              }



              if(widget.onChanged != null) {
                widget.onChanged!(widget.text);
                setState(() {
                  _isActive = widget.isActive;
                });
              }


            }
          },
          child: Container(
              width: (widget.width != null) ? widget.width : length.toDouble(),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: widget.paddingHorizontal, vertical: widget.padding),
              decoration: BoxDecoration(
                color: (_isActive == false) ? widget.color : (widget.backColor != null) ? widget.backColor : Colors.white,
                border: Border.all(width: (widget.isBordered == true) ? 1 : 0, color: (widget.borderColor != null) ? widget.borderColor! : widget.color!),
                borderRadius: BorderRadius.circular(widget.radius),
                // boxShadow: boxShadow
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: (widget.isLoading == false) ? [
                  (widget.iconData != null) ? Container(margin: EdgeInsets.only(right: widget.marginIcon), child: Icon(widget.iconData, size: widget.iconSize, color: (_isActive == false) ? Colors.white : fontColor,)) : SizedBox(),
                  (widget.iconPath != null) ? Container(margin: EdgeInsets.only(right: widget.marginIcon), child: SvgPicture.asset(widget.iconPath!, width: widget.iconSize, height: widget.iconSize,)) : SizedBox(),
                  Text(widget.text, style: blackFontStyle.copyWith(color: (_isActive == false) ? Colors.white : fontColor, fontWeight: (widget.isBold == true) ? FontWeight.w700 : FontWeight.w400, fontSize: widget.fontSize)),
                ] : [loadingIndicator],
              )
          ),
        )
    );
  }


}