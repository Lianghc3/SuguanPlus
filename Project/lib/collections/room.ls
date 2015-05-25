/**
 * @brief 房间数据模型
 *
 * @param number {String} 房号
 * @param build {DBRef} 楼栋，保存对building的引用
 * @param resids {Array} 居住人，保存每个居住人的信息
 *        @param mobi {String} 手机号&登陆账号
 *        @param pwd {String} 密码
 *        @param name {String} 姓名
 *        @param last_r {Date} 最后一次看通知列表的时间（判断消息是否已读）
 * @param notifs {Array} 宿舍接收的消息通知
 *        @param cont {String} 消息内容
 *        @param subj {String} 消息主题
 *        @param time {Date} 发送时间（与last_r共同判断是否已读）
 *        @param src {Object} 消息来源
 */

Rooms = new Mongo.Collection 'rooms'

Rooms.allow {
	insert: (username, doc) -> username?
}

root = exports ? @
root.Rooms = Rooms