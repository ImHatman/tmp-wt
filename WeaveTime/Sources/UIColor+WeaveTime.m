//
//  UIColor+WeaveTime.m
//  WeaveTime
//
//  Created by Cyril's Mac on 28/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "UIColor+WeaveTime.h"

@implementation UIColor (WeaveTime)

+ (UIColor *)colorWithHexaString:(NSString *)hexString {
    
    @try {
        
        /* convert the string into a int */
        unsigned int colorValueR,colorValueG,colorValueB,colorValueA;
        NSString *hexStringCleared = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
        if(hexStringCleared.length == 3) {
            /* short color form */
            /* im lazy, maybe you have a better idea to convert from #fff to #ffffff */
            hexStringCleared = [NSString stringWithFormat:@"%@%@%@%@%@%@", [hexStringCleared substringWithRange:NSMakeRange(0, 1)],[hexStringCleared substringWithRange:NSMakeRange(0, 1)],
                                [hexStringCleared substringWithRange:NSMakeRange(1, 1)],[hexStringCleared substringWithRange:NSMakeRange(1, 1)],
                                [hexStringCleared substringWithRange:NSMakeRange(2, 1)],[hexStringCleared substringWithRange:NSMakeRange(2, 1)]];
        }
        if(hexStringCleared.length == 6) {
            hexStringCleared = [hexStringCleared stringByAppendingString:@"ff"];
        }
        
        NSString *red = [hexStringCleared substringWithRange:NSMakeRange(0, 2)];
        NSString *green = [hexStringCleared substringWithRange:NSMakeRange(2, 2)];
        NSString *blue = [hexStringCleared substringWithRange:NSMakeRange(4, 2)];
        NSString *alpha = [hexStringCleared substringWithRange:NSMakeRange(6, 2)];
        
        [[NSScanner scannerWithString:red] scanHexInt:&colorValueR];
        [[NSScanner scannerWithString:green] scanHexInt:&colorValueG];
        [[NSScanner scannerWithString:blue] scanHexInt:&colorValueB];
        [[NSScanner scannerWithString:alpha] scanHexInt:&colorValueA];
        
        return [UIColor colorWithRed:((colorValueR)&0xFF)/255.0
                               green:((colorValueG)&0xFF)/255.0
                                blue:((colorValueB)&0xFF)/255.0
                               alpha:((colorValueA)&0xFF)/255.0];
        
        
    } @catch (NSException *exception) {
        return [UIColor blackColor];
    }
}

+ (UIColor *)darkBlue {
    return [UIColor colorWithHexaString:@"#0f4873"];
}

+ (UIColor *)lightBlue {
    return [UIColor colorWithHexaString:@"#199ed8"];
}

+ (UIColor *)goldYellow {
    return [UIColor colorWithHexaString:@"#daab35"];
}

@end
