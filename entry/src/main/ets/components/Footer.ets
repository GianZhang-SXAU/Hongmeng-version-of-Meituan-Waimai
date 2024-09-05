@Component
export struct Footer{
  @Link showCart: boolean;

  build() {
    Row(){
       Row(){
           //角标
            Badge({
              count: 22,
              position: BadgePosition.RightTop,
              style:{ badgeSize:25, fontSize:16}
            }){
              Image($r("app.media.waimai"))
              // Image("https://zqran.gitee.io/images/waimai/cart-2.png")
                .width(47)
                .height(69)
                .position({y: -20})
            }
            .margin({left: 20})
           //价格
             Column(){
              Text(){
                Span('￥')
                  .fontColor('#fff')
                  .fontSize(12)
                Span('0.00')
                  .fontColor('#fff')
                  .fontSize(20)
              }
                .fontColor('#fff')
               Text(`预估另需配送费：￥5`)
                 .fontColor('#565759')
             }.alignItems(HorizontalAlign.Start)
               .padding({left: 10})
                .layoutWeight(1)

           //结算
             Text('去结算')
               .width(80)
               .height(50)
               .backgroundColor('#f8c74e')
               .textAlign(TextAlign.Center)
               .borderRadius({
                 topRight: 25,
                 bottomRight: 25
               })

       }.width('100%')
        .height(50)
        .backgroundColor('#000')
        .borderRadius(25)
       .onClick( () => {
         this.showCart = !this.showCart
       })
    }.width('100%')
    .height(90)
    .padding(20)
  }
}