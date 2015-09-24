//
//  OLiNotifictionCenterManage.m
//  Lecarx
//
//  Created by OLi on 15/8/10.
//  Copyright (c) 2015年 Lecarx. All rights reserved.
//

#import "OLiNotifictionCenterManage.h"

@implementation OLiNotifictionCenterManage

static inline NSNotificationCenter * DefaultNotificationCenter() {
        return [NSNotificationCenter defaultCenter];
}

/*!
 *  @brief  向通知中心注册观察者
 *
 *  @param observer  被观察的对象
 *  @param aSelector 被观察的对象收到消息时，调用的方法
 *  @param aName     消息名称
 *  @param anObject  表示从谁那儿发送出来的消息（具体到监听哪个对象发出的通知时才会用到）
 */
+(void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject {
    [DefaultNotificationCenter() removeObserver:observer name:aName object:anObject];
    [DefaultNotificationCenter() addObserver:observer selector:aSelector name:aName object:anObject];
}

/*!
 *  @brief  发送消息
 *
 *  @param notification 消息
 */
+(void)postNotification:(NSNotification *)notification {
    [DefaultNotificationCenter() postNotification:notification];
}

/*!
 *  @brief  发送消息
 *
 *  @param aName    消息名称
 *  @param anObject 消息携带的参数
 */
+(void)postNotificationName:(NSString *)aName object:(id)anObject {
    [DefaultNotificationCenter() postNotificationName:aName object:anObject];
}

/*!
 *  @brief  发送消息
 *
 *  @param aName     消息名层
 *  @param anObject  消息携带的参数 OC对象
 *  @param aUserInfo 消息携带的字典对象
 */
+(void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo {
    [DefaultNotificationCenter() postNotificationName:aName object:aName userInfo:aUserInfo];
}

/*!
 *  @brief  移除观察者
 *
 *  @param observer 被观察的对象
 */
+(void)removeObserver:(id)observer {
    [DefaultNotificationCenter() removeObserver:observer];
}

/*!
 *  @brief  移除观察者
 *
 *  @param observer 被观察的对象
 *  @param aName    已经注册的消息名称
 *  @param anObject  表示从谁那儿发送出来的消息
 */
+(void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject {
    [DefaultNotificationCenter() removeObserver:observer name:aName object:anObject];
}

@end
