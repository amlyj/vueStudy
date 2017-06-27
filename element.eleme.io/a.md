# a标签

## `href`与`v-bind:href`
> **`v-bind:href＝"[]"`** 可以直接使用vue的变量（如token）
* HTML
```html
<el-table-column show-overflow-tooltip="true" label="操作" width="140">
    <!--scope.row　代表当前一条数据-->
    <template scope="scope"> 
        <a v-bind:href="['/file/download?file_id='+scope.row.id
                             +'&disk_format='+scope.row.disk_format 
                             +'&token='+token]"> 
              <i class="fa fa-download mr_5"></i>文件下载</a>
    </template>
</el-table-column>
```

* JavaScript
```js
<script>
    export default{
        data: function () {
            // 使用return定义变量(json类型)
            return {
                token: common.getToken()
            }
        },
        mounted: function () {　　　// 初始化加载
        },
        destroyed: function () {　　//销毁
        },
        components: {　　//加载组件
        },
        methods: {　　　　//定义方法
        }
    }
</script>
``
