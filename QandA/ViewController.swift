

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel! //顯示問題
    @IBOutlet weak var answerLabel: UILabel! //顯示答案
    @IBOutlet weak var questionNumber: UILabel! //顯示問題號碼
    
    var questions = [Questions]()
    var index = 0 //存questions陣列的題目編號
    
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
        
        //顯示題目
        questionLabel.text = questions[index].問題
        //顯示答案
        answerLabel.text = ""
        
    }
    
    @IBAction func nextQuesrion(_ sender: UIButton) {
      
        if index < questions.count - 1{ //題目如果少於questions陣列最大數-1 count＝最大數
            index = index + 1
            questionLabel.text = questions[index].問題
            answerLabel.text = ""
        }
    }
    
    @IBAction func answerView(_ sender: Any) {
        answerLabel.text = questions[index].答案
    }
    
    


}

