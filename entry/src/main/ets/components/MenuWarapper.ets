@Component
export struct MenuWrapper{
  @State arr: string[] = ['一人套餐','特色烧烤','杂粮主食','零食饮料']
  @State activeIndex: number = 0

  build() {
    Row(){

      Column(){
         ForEach(this.arr, (item, index)=>{
           Text(item)
             .height(50)
             .width('100%')
             .textAlign(TextAlign.Center)
             .backgroundColor(this.activeIndex === index ? '#fff' : null)
             .onClick(() => {
               this.activeIndex = index
             })
         }, item => item)
      }.height('100%')
       .width(90)

      List(){

      }.layoutWeight(1)
      .height('100%')
      .backgroundColor('#fff')

    }.width('100%')
    .layoutWeight(1)
    .backgroundColor('#eaeaea')
  }
}