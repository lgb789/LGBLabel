//
//  UILabel+LGBLabel.m
//  Pods
//
//  Created by mac_256 on 2017/8/24.
//
//

#import "UILabel+LGBLabel.h"

@implementation UILabel (LGBLabel)

//line space
-(void)lgb_setText:(NSString *)text lineSpace:(CGFloat)lineSpace
{
    if (lineSpace < 0.01 || !text) {
        self.text = text;
    }
    
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:text];
    [attrStr addAttribute:NSFontAttributeName value:self.font range:NSMakeRange(0, text.length)];
    [attrStr addAttribute:NSForegroundColorAttributeName value:self.textColor range:NSMakeRange(0, text.length)];
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setLineSpacing:lineSpace];
    [style setLineBreakMode:self.lineBreakMode];
    [style setAlignment:self.textAlignment];
    [attrStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, text.length)];
    
    self.attributedText = attrStr;
}

//attributes
-(void)lgb_setTextAttributes:(NSDictionary *)attributes
{
    if (!attributes) {
        return;
    }
    
    UIFont *font = [attributes objectForKey:NSFontAttributeName];
    if (font) {
        self.font = font;
    }
    
    UIColor *textColor = [attributes objectForKey:NSForegroundColorAttributeName];
    if (textColor) {
        self.textColor = textColor;
    }
    
    UIColor *backgroundColor = [attributes objectForKey:NSBackgroundColorAttributeName];
    if (backgroundColor) {
        self.backgroundColor = backgroundColor;
    }
}

//create label
+(UILabel *)lgb_labelWithBackgroundColor:(UIColor *)backgroundColor
                                    font:(UIFont*)font
                               textColor:(UIColor*)textColor
                           textAlignment:(NSTextAlignment)alignment
                           numberOfLines:(NSInteger)numberOfLines
                          adjustFontSize:(BOOL)adjust
{
    UILabel* lb                  = [UILabel new];
    lb.backgroundColor           = backgroundColor;
    lb.textColor                 = textColor;
    lb.textAlignment             = alignment;
    lb.numberOfLines             = numberOfLines;
    lb.font                      = font;
    lb.adjustsFontSizeToFitWidth = adjust;
    
    return lb;
}

@end
