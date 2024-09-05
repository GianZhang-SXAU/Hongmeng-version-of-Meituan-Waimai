@Component
export struct Nav{
  build() {
    Row(){

      //点餐
      Column(){
        Text('点菜').layoutWeight(1).fontWeight(900)
        Text().width(32)
          .height(2)
          .backgroundColor('#f6c54c')
      }.width(70)

      //评价
      Column(){
        Text(){
          Span('评价').fontColor('#999')
          Span('1796')
            .fontColor('#999')
            .fontSize(12)
        }
      }.width(70)

      //商家
      Column(){
        Text('商家').fontColor('#999')
      }.width(70)

      //输入框
      Row(){

        Image($r('app.media.magnifyingglass'))
          .width(16)
          .aspectRatio(1)//宽高比
          .margin({
            left: 8, right: 8
          })

        Text('请输入菜品名')
          .fontColor('#999')
          .fontSize(12)
      }.layoutWeight(1)
      .height(24)
      .backgroundColor('#ccc')
      .borderRadius(12)

    }.height(40)
     .width('100%')
     .backgroundColor('#fff')
  }
}