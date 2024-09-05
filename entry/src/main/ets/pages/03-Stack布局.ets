@Entry
@Component
struct Index {

  build() {
      Stack({alignContent: Alignment.Bottom}){ //层叠容器
        Row()
          .width('100%')
          .height('100%')
          .backgroundColor('#499c54')
        Row()
          .width('90%')
          .height(450)
          .backgroundColor('#e8b91d')
        Row()
          .width('80%')
          .height(90)
          .backgroundColor("#000")
      }
  }
}