@Component
export struct Cart{
  build() {
    Column() {
        Text('购物车列表')
          .fontSize(30)
          .margin({top: 20})
    }.height(500)
      .width('100%')
      .backgroundColor('#fff')
      .borderRadius({
        topLeft: 50,
        topRight :50
      })
  }
}