import { Nav } from '../components/Nav'
import { MenuWrapper } from '../components/MenuWarapper'
import { Cart } from '../components/Cart'
import { Footer } from  '../components/Footer'

@Entry
@Component
struct Index {
  @State showCart: boolean = false
  build() {
      Stack({alignContent: Alignment.Bottom}){ //层叠容器
        //外卖商品容器
        Column(){
          //导航
           Nav()
          //商品区
          MenuWrapper()

        }.width('100%')
        .height('100%')
        .backgroundColor('#499c54')


        if (this.showCart){
          Cart()
        }

        Footer({showCart: $showCart })
      }
  }
}