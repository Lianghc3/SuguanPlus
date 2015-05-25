# 数据库设计

## 文档
考虑到 MongoDB 对单个文档的 16MB 大小限制，因此将 **宿舍楼(build)** 作为一个集合，**宿舍房间(room)**  作为一个集合，在`room`文档中，保存对宿舍楼文档的引用。所有的用户都嵌套在房间里面。

```js
build: {
    _id: ObjectId,
    name: "X3",
    admin: {
        _id: ObjectId,
        mobi: "13800138000",
        pwd: "1234567",
        name: "李四",
        recv: [
            {},...
        ]
    }
},
room: {
    _id: ObjectId,
    number: 302,
    build: DBRef,
    resi: [
        {
            _id: ObjectId,
            mobi: "13800138000",
            pwd: "123456",
            name: "张三"
        },
        {}, ...
    ],
    noti: [
        {
            _id: ObjectId,
            cont: "一些消息",
            subj: "title",
            time: Date() //若时间大于last_r，则判断为未读消息
        },
        {}, ...
    ],
    last_r: Date() //最后一次访问通知页面的时间，用于判断消息是否已读
}
```



