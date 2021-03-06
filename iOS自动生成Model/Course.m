//  ************************************************************************
//
//  Course.m
//  uschool
//
//  Created by hefanghui on 2017/06/30.
//  Copyright © 2017年 topglobaledu. All rights reserved.
//
//  Main function:
//
//  Other specifications:
//
//  ************************************************************************

#import "Course.h"
#import "NSObject+YYModel.h"
#import "MJExtension.h"
#import "TeachingSubject.h"
#import "Grade.h"

@implementation Course

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
	if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;	
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
	if ([key isEqualToString:@"course_id"]) {
		_courseID = value;
		return;
	}
	if ([key isEqualToString:@"state"]) {
		_courseState = value;
		return;
	}
	if ([key isEqualToString:@"course_name"]) {
		_courseName = value;
		return;
	}
}

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"courseID" : @"course_id",
			 @"courseState" : @"state",
			 @"courseName" : @"course_name"};
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    	return @{@"teachingSubject" : [TeachingSubject class],
				 @"grade" : [Grade class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName {
    return @{@"courseID" : @"course_id",
			 @"courseState" : @"state",
			 @"courseName" : @"course_name"};
}

+ (NSDictionary *)objectClassInArray {
    	return @{@"teachingSubject" : [TeachingSubject class],
				 @"grade" : [Grade class]};
}

@end

