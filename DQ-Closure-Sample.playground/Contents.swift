import Foundation

func save(savepoint:String, completion: ( (String?) -> Void )? ){
   
    print("[1]   冒険の書を確認")
    //下のコードはセーブに3秒かかると想定したもの
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        print("[3]   冒険の書に記録しました")
        print("\(savepoint)")
        completion!("タロウ")
        
    }
}



save(savepoint: "始まりの街") { (value: String?) in
    guard let _value = value else {
        return
    }
    print("冒険者 : \(_value)")
}
print("[2] 冒険の書に記録中")
