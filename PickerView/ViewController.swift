//
//  ViewController.swift
//  PickerView
//
//  Created by 권민수 on 2023/04/06.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageArray = [UIImage?]()
    var imageFileName = [ "cat.jpeg", "cat2.png", "catworm.jpeg", "devilcat.jpeg", "fanxycat.jpeg", "hmmchitcat.jpeg", "ironcat.jpeg", "nerdcat.jpeg", "sadcat.jpeg", "sadcat2.jpeg" ]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    // 피커 뷰 열의 개수를 설정
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // 오버로드 함수, 항목의 개수를 설정
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    // 선택된 항목 인덱스의 파일이름을 리턴
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    // row인덱스의 항목을 선택했을 때
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }


}

