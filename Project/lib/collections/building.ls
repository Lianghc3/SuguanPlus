/**
 * @brief 楼栋数据模型
 *
 * @param name {String} 宿舍楼名字
 * @param notices {Array} 保存每一条公告
 *        @param subj {String} 公告标题
 *        @param cont {String} 公告内容
 *        @param attach {String} 附件路径
 * @param admins Array{ 宿舍管理员，保存每个管理员的信息
 *        @param mobi {String} 手机号&登陆账号
 *        @param pwd {String} 密码
 *        @param name {String} 姓名
 *        @param last_r {Date} 最后一次看通知列表的时间（判断消息是否已读）
 */

Buildings = new Mongo.Collection 'buildings'

Buildings.allow {
	insert: (username, doc) -> username?
}

root = exports ? @
root.Buildings = Buildings