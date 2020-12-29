

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel! //顯示問題
    @IBOutlet weak var answerLabel: UILabel! //顯示答案
    
    var questions = [Questions]()
    var index = 0 //存questions陣列的題目編號
    func 題目跟答案(){ //題目跟空字串
        //顯示題目
        questionLabel.text = questions[index].問題
        //顯示答案
        answerLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //創造題目
        let questions0 = Questions(問題: "台灣最高山是哪座？", 答案: "玉山")
        questions.append(questions0)
        let questions1 = Questions(問題: "台灣有風城之稱的城市是哪？", 答案: "新竹")
        questions.append(questions1)
        let questions2 = Questions(問題: "雪山隧道全長多少？", 答案: "12.9公里")
        questions.append(questions2)
        let questions3 = Questions(問題: "太魯閣國家公園佔地面積多少？", 答案: "920坪方公里")
        questions.append(questions3)
        let questions4 = Questions(問題: "橫跨台灣花蓮、南投、台中三個城市的國家公園是？", 答案: "太魯閣國家公園")
        questions.append(questions4)
        let questions5 = Questions(問題: "台灣第一個24H營業的是什麼店？", 答案: "永和豆漿")
        questions.append(questions5)
        let questions6 = Questions(問題: "台灣唯一不靠海的城市是？", 答案: "南投")
        questions.append(questions6)
        let questions7 = Questions(問題: "台灣保育戰地的國家公園為哪座？", 答案: "金門")
        questions.shuffle() //隨機亂數排列題目
        questions.append(questions7)
        
        題目跟答案()
        
        
    }
    //下一題按鈕
    @IBAction func nextQuesrion(_ sender: UIButton) {
        //題目如果少於questions陣列最大數-1
        if index < questions.count - 1{ // count＝最大數
            index = index + 1
            題目跟答案()
            
        }
    }
    
    @IBAction func answerView(_  sender: Any) { //顯示答案按鈕
        answerLabel.text = questions[index].答案
    }
    
    @IBAction func again(_ sender: Any) { //再一次按鈕
        questions.shuffle() //隨機亂數排列題目
        題目跟答案()
    }
   
    
    


}

