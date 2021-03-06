//
//  FTIntrosInputInitialDataViewController.swift
//  TimeSheet
//
//  Created by TomomuraRyota on 2015/04/27.
//  Copyright (c) 2015年 TomomuraRyota. All rights reserved.
//

import UIKit

class FTIntrosInputInitialDataViewController: FTIntrosPageDataViewController, UITextFieldDelegate {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: - View Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageIndex = 1
        self.descriptionLabel.text = "名前を入力したらすぐにはじめられます"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITextField Delegate
    
    /**
    入力文字の最大文字数を10文字に制限し、10文字以内であれば値を設定
    
    :param: textField <#textField description#>
    :param: range     <#range description#>
    :param: string    <#string description#>
    
    :returns: <#return value description#>
    */
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let str = textField.text as NSString
        let inputedStr = str.stringByReplacingCharactersInRange(range, withString: string)
        
        if count(inputedStr) > 10 {
            return false
        } else {
            self.user!.name = inputedStr
            return true
        }
    }
}
