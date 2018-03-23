#  el-input　
> [docs: http://element.eleme.io/#/zh-CN/component/input](http://element.eleme.io/#/zh-CN/component/input)

## 自定义拓展js事件

| **`JavaScript`** | **`el-input`** |    **`描述`** 　|
| :--------------: | :-------------:| :-------------:|
|  keyup="func()"  | @keyup.native="func"       |输入事件
|event.keyCode==13 | @keyup.enter.native="func" |回车事件


## DOM 
##### 获取`<el-input>`标签原生dom元素的两种方法：
* 使用原生JS:

  HTML:
  ``` html
  <input type="hidden" id="hide-input"/>
  <el-input v-model="data.name" placeholder="名称" maxlength='50'></el-input>
  ```
  JS:
  ``` js
  var elInp = document.getElementById('hide-input').nextSibling.nextElementSibling.firstElementChild;
  // 该变量即html原生dom元素．
  elInp.value = 'hello';
  ```
  
* 使用`vue`内置方法：给element标签添加`ref`属性

  HTML:
  ``` html
  <el-input ref="sss" v-model="data.name" placeholder="名称" maxlength='50'></el-input>
  ```
  JS:
  ``` js
  var elInp = this.$refs['sss'].$refs.input;
  
  elInp.value = 'lfd';
  elInp.focus();
  ```
 
  
                
