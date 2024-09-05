@Entry
@Component
struct Index {
  // 利用装饰器声明状态，将变量声明为响应式
  @State message: string = 'Hello World';

  // 构建界面
  build() {
     Column(){
       Image($r('app.media.startIcon'))
         .width(50)
         .height(50)
       Text('登录')
       TextInput({placeholder:'请输入用户名'})
         .margin({top: 30})
       TextInput({placeholder:'请输入密码'})
         .type(InputType.Password)
         .margin({top: 10})
       Button('登录').width("80%")
         .margin({top: 30})
     }.width('100%')
      .padding(30)
      // .alignItems(HorizontalAlign.Start)   调整默认为左对齐

  }
}