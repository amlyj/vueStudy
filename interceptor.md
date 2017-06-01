# vue 拦截器
> 拦截器可以全局定义的，用于预处理和后处理的要求。" 在main.js中，使用以下代码 "

* 请求拦截器
```js
Vue.http.interceptors.push(function(request, next) {

  // modify method
  request.method = 'POST';

  // modify headers
  request.headers.set('X-CSRF-TOKEN', 'TOKEN');
  request.headers.set('Authorization', 'Bearer TOKEN');

  // continue to next interceptor
  next();
});
```

* 请求和响应拦截器
```js
import Vue from 'vue'
import routes from './router'

Vue.http.interceptors.push((request, next) => {
    console.log(this); //此处this为请求所在页面的Vue实例
    // modify request
    request.method = 'POST';//在请求之前可以进行一些预处理和配置

    // continue to next interceptor
    next((response) => {
        //在响应之后传给then之前对response进行修改和逻辑判断。
        // 对于token时候已过期的判断，就添加在此处，
        // 页面中任何一次http请求都会先调用此处方法

        var url = window.location.href;
        var request_url = url.split('/website/view')[1];
        if (response.body.code == 419) {
            if (request_url) {
                routes.push('/login/?request_url=' + request_url);
            } else {
                routes.push('/login/')
            }
        }
        return response;

    });
});
```


* 返回响应并停止处理
```js
Vue.http.interceptors.push(function(request, next) {

  // modify request ...

  // stop and return response
  next(request.respondWith(body, {
    status: 404,
    statusText: 'Not found'
  }));
});
```

* 覆盖默认的拦截器
```js
Vue.http.interceptor.before = function(request, next) {

  // override before interceptor

  next();
};
```
