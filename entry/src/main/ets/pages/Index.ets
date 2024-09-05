@Entry
@Component
struct Index {
  // 利用装饰器声明状态，将变量声明为响应式
  @State message: string = 'Hello World';

  // 构建界面
  build() {
     Text(this.message)
       .fontSize(30)
       .fontWeight(900)
       .fontColor("#f00")

  }
}