//
//  TableViewCell.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "TableViewCellProtocol.h"

@interface TableViewCell : UITableViewCell<TableViewCellProtocol>

/**
 If YES, TableViewCell will accelerate the creation of new cells using UINib. Beware UINib has the limitation that
 nib files can only contain the cell as the top level object. Anything else such as a gesture recognizer or another UIView
 will cause a crash. Default implementation returns NO.
 */
+ (BOOL)useUINib;

@end
