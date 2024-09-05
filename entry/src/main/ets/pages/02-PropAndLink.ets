//定义一个组件
// Prop组件传值
@Component
struct MyCount{

  @Prop count: number

  build() {
    Row(){
      Button('-').onClick(()=>{
        this.count--
      })
      Text(`${this.count}`).width(50).textAlign(TextAlign.Center)
      Button('+').onClick(()=>{
        this.count++
      })
    }
  }
}
// Link组件传值
@Component
struct MyCount1{

  @Link count: number

  build() {
    Row(){
      Button('-').onClick(()=>{
        this.count--
      })
      Text(`${this.count}`).width(50).textAlign(TextAlign.Center)
      Button('+').onClick(()=>{
        this.count++
      })
    }
  }
}

@Entry      //根组件(页面入口)
@Component  //定义组件
struct Index {
  // 利用装饰器声明状态，将变量声明为响应式
  @State message: string = 'Hello World';
  @State count: number = 10;
  @State count1: number = 10;

  // @Prop  父子组件单向同步
  // @Link  父子组件双向同步
  // 构建界面
  build() {
     Column(){
       Text(`父组件:${this.count}`)
       MyCount({count: this.count})
       
       Text(`父组件:${this.count1}`)
       MyCount1({count: $count1})

     }.width('100%')
      .padding(30)
      // .alignItems(HorizontalAlign.Start)   调整默认为左对齐

  }
}