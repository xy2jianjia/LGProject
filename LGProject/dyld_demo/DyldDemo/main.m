//
//  main.m
//  DyldDemo
//
//  Created by monan on 2021/7/13.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        NSLog(@"main 函数");
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

//确保此函数在 在main函数被调用之前调用
__attribute__ ((constructor))void before_main(){
    printf("main 前 ：%s\n",__func__);
}
// 确保此函数在 在main函数被调用之后调
__attribute__ ((destructor)) void after_main(){
    printf("main 后 ：%s",__func__);
}
