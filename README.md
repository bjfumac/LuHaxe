## LuHaxe
LuHaxe是我的一个脑洞概念实现，它的目标是结合Haxe和Lua的优点，更好地在Unity3D环境中进行动态脚本的开发工作。
## LuHaxe特点
* 底层采用某大神的[tolua](https://github.com/topameng/tolua)，成熟稳定，重复造车轮子不是脑洞的目的。因此本框架具有tolua的全部特点。
* 采用Haxe语言进行脚本编写，并“翻译”成lua执行，代替在tolua环境下进行lua脚本编写的传统开发模式。
* Haxe是强类型的面向对象语言，具有完整的面向对象特性，包括但不限于继承、接口、抽象、g/setter、lambda、泛型模板等，详见[Wiki](https://en.wikipedia.org/wiki/Haxe)。更贴合Java、C#等程序员的书写和设计习惯。
* 支持HaxeDevelop(FlashDevelop)、VS Code等代码编辑工具，具有完善的代码提示、代码自动完成、Refactor、类型检测、编译时错误检测等。解决了当下lua开发中比较大的痛点，方便多人同步进行规模化开发。
* AS、TS、JS程序员可三分钟内上手。
* 有成品的Haxe库和底层库不依赖tolua，如：[PureMVC](https://github.com/PureMVC/puremvc-haxe-multicore-framework)、[Enitias](https://github.com/montonero/entithax)、[Protobuf](https://github.com/nitrobin/protohx)、[Bson](https://github.com/qifun/json-stream)、[TCP/UDP Socket](https://github.com/MattTuttle/hxnet)等。移植其他语言类库也比较容易。

<br />

## 安装(Windows)
* 下载Haxe [https://haxe.org/download/](https://haxe.org/download/)
* 下载IDE [推荐HaxeDevelop，用本框架可以免配置，其他编辑器需要手动配置](https://haxe.org/documentation/introduction/editors-and-ides.html)
* 打开HaxeDevelop并打开项目haxe/Example，修改hx文件后，执行菜单中的Build Project。
* 打开Unity并打开项目unity/Example，然后打开场景unity/Example/Assets/Example，运行查看效果。



