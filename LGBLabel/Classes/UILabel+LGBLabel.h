//
//  UILabel+LGBLabel.h
//  Pods
//
//  Created by mac_256 on 2017/8/24.
//
//

#import <UIKit/UIKit.h>

@interface UILabel (LGBLabel)

-(void)lgb_setText:(NSString *)text lineSpace:(CGFloat)lineSpace;

-(void)lgb_setTextAttributes:(NSDictionary *)attributes UI_APPEARANCE_SELECTOR;

+(UILabel *)lgb_labelWithBackgroundColor:(UIColor *)backgroundColor
                                    font:(UIFont*)font
                               textColor:(UIColor*)textColor
                           textAlignment:(NSTextAlignment)alignment
                           numberOfLines:(NSInteger)numberOfLines
                          adjustFontSize:(BOOL)adjust;

@end
