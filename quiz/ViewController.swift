//
//  ViewController.swift
//  quiz
//
//  Created by nttr on 2017/07/20.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var point: Int = 0
    var quizNumber: Int = 0
    var quizArray: [Quiz] = []

    @IBOutlet var leftsLabel: UILabel!
    @IBOutlet var quizTextView: UITextView!
    @IBOutlet var option1Button: UIButton!
    @IBOutlet var option2Button: UIButton!
    @IBOutlet var option3Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        setUpQuiz()
        if current_lefts != 0 {
            quizNumber = 0
            showcurrentQuiz()
        } else {
            showQuiz()
        }
    }

    func setUpQuiz(){
        
        quizArray = []
    
        let quiz1 = Quiz(lefts: 90, text: "残り2本", option1: "B", option2: "T20", option3: "D15", answer: "B")
        let quiz2 = Quiz(lefts: 89, text: "残り2本", option1: "T19", option2: "B", option3: "T20", answer: "T19")
        let quiz3 = Quiz(lefts: 88, text: "残り2本", option1: "T20", option2: "T18", option3: "D19", answer: "T20")
        let quiz4 = Quiz(lefts: 87, text: "残り2本", option1: "T17", option2: "T9", option3: "T19", answer: "T17")
        let quiz5 = Quiz(lefts: 86, text: "残り2本", option1: "B", option2: "T16", option3: "T19", answer: "B")
        let quiz6 = Quiz(lefts: 85, text: "残り2本", option1: "T15", option2: "B", option3: "D20", answer: "T15")
        let quiz7 = Quiz(lefts: 84, text: "残り2本", option1: "T20", option2: "T14", option3: "T18", answer: "T20")
        let quiz8 = Quiz(lefts: 83, text: "残り2本", option1: "T17", option2: "T13", option3: "T11", answer: "T17")
        let quiz9 = Quiz(lefts: 82, text: "残り2本", option1: "B", option2: "T8", option3: "T14", answer: "B")
        let quiz10 = Quiz(lefts: 81, text: "残り2本", option1: "T19", option2: "T17", option3: "T15", answer: "T19")
        let quiz11 = Quiz(lefts: 80, text: "残り2本", option1: "T20", option2: "D15", option3: "T10", answer: "T20")
        let quiz12 = Quiz(lefts: 79, text: "残り2本", option1: "T17", option2: "T19", option3: "T18", answer: "T17")
        let quiz13 = Quiz(lefts: 78, text: "残り2本", option1: "T18", option2: "T16", option3: "T14", answer: "T18")
        let quiz14 = Quiz(lefts: 77, text: "残り2本", option1: "T15", option2: "T17", option3: "T13", answer: "T15")
        let quiz15 = Quiz(lefts: 76, text: "残り2本", option1: "T20", option2: "T16", option3: "T8", answer: "T20")
        let quiz16 = Quiz(lefts: 75, text: "残り2本", option1: "T17", option2: "T15", option3: "T18", answer: "T17")
        let quiz17 = Quiz(lefts: 74, text: "残り2本", option1: "T14", option2: "T15", option3: "T18", answer: "T14")
        let quiz18 = Quiz(lefts: 73, text: "残り2本", option1: "T19", option2: "T16", option3: "T17", answer: "T19")
        let quiz19 = Quiz(lefts: 72, text: "残り2本", option1: "T16", option2: "T18", option3: "T14", answer: "T16")
        let quiz20 = Quiz(lefts: 71, text: "残り2本", option1: "T13", option2: "T11", option3: "T15", answer: "T13")
        let quiz21 = Quiz(lefts: 99, text: "残り2本", option1: "T19", option2: "T13", option3: "T11", answer: "T19")
        let quiz22 = Quiz(lefts: 98, text: "残り2本", option1: "B", option2: "T18", option3: "T14", answer: "B")
        let quiz23 = Quiz(lefts: 97, text: "残り2本", option1: "T19", option2: "T17", option3: "T15", answer: "T19")
        let quiz24 = Quiz(lefts: 96, text: "残り2本", option1: "T16", option2: "T18", option3: "D19", answer: "T16")
        let quiz25 = Quiz(lefts: 95, text: "残り2本", option1: "B", option2: "T20", option3: "T17", answer: "B")
        let quiz26 = Quiz(lefts: 94, text: "残り2本", option1: "T18", option2: "T19", option3: "T20", answer: "T18")
        let quiz27 = Quiz(lefts: 93, text: "残り2本", option1: "T19", option2: "T18", option3: "T17", answer: "T19")
        let quiz28 = Quiz(lefts: 92, text: "残り2本", option1: "T20", option2: "T18", option3: "T16", answer: "T20")
        let quiz29 = Quiz(lefts: 91, text: "残り2本", option1: "T17", option2: "T19", option3: "T15", answer: "T17")

        quizArray.append(quiz1)
        quizArray.append(quiz2)
        quizArray.append(quiz3)
        quizArray.append(quiz4)
        quizArray.append(quiz5)
        quizArray.append(quiz6)
        quizArray.append(quiz7)
        quizArray.append(quiz8)
        quizArray.append(quiz9)
        quizArray.append(quiz10)
        quizArray.append(quiz11)
        quizArray.append(quiz12)
        quizArray.append(quiz13)
        quizArray.append(quiz14)
        quizArray.append(quiz15)
        quizArray.append(quiz16)
        quizArray.append(quiz17)
        quizArray.append(quiz18)
        quizArray.append(quiz19)
        quizArray.append(quiz20)
        quizArray.append(quiz21)
        quizArray.append(quiz22)
        quizArray.append(quiz23)
        quizArray.append(quiz24)
        quizArray.append(quiz25)
        quizArray.append(quiz26)
        quizArray.append(quiz27)
        quizArray.append(quiz28)
        quizArray.append(quiz29)

        
        
        quizArray = Quiz.shuffle(quizArray: quizArray)
    
    }

    func showcurrentQuiz(){
        var selectedQuiz = [Quiz]()
        for i in 0..<quizArray.count {
            if quizArray[i].lefts == current_lefts {
                selectedQuiz.append(quizArray[i])
            }
        }
        quizArray = selectedQuiz
        showQuiz()
    }
    
    func showQuiz(){
    
        leftsLabel.text = String(quizArray[quizNumber].lefts)
        quizTextView.text = quizArray[quizNumber].text
        option1Button.setTitle(quizArray[quizNumber].option1, for: .normal)
        option2Button.setTitle(quizArray[quizNumber].option2, for: .normal)
        option3Button.setTitle(quizArray[quizNumber].option3, for: .normal)
        
    }
    func resetQuiz() {
        point = 0
        quizNumber = 0
        self.quizArray = Quiz.shuffle(quizArray: self.quizArray)
        self.showQuiz()
    }
    
    func updateQuiz() {
        
        print("==============")
        if quizArray.count == 1 {
            print("====RESET====")
            setUpQuiz()
        }
        print("==============")
        
        // 問題番号を更新
        quizNumber = quizNumber + 1
        
        // もし最終問題をとき終えたら、アラートを出すして結果表示
        if quizNumber == quizArray.count {
            let alertText = "\(quizArray.count)問中、\(point)問正解でした。"
            let alertController = UIAlertController(title: "結果", message: alertText, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.resetQuiz()
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            // 最終問題以外では次の問題を表示
            showQuiz()
        }
    }
    
    @IBAction func selectOption1() {
        // ボタン内の文言と、もともと設定していた答えが一致しているか確認
        if option1Button.titleLabel?.text == quizArray[quizNumber].answer {
            
            let alert = UIAlertController(title: "正解", message: "ナイスアレンジ", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)

            print("正解！")
            // 正解ポイント追加
            point = point + 1
        } else {
            let alert = UIAlertController(title: "微妙", message: String(quizArray[quizNumber].answer), preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)

            print("不正解！")
        }
        
        // 次の問題へ
        updateQuiz()
    }
    
    // 選択肢2が押されたときの処理
    @IBAction func selectOption2() {
        // ボタン内の文言と、もともと設定していた答えが一致しているか確認
        if option2Button.titleLabel?.text == quizArray[quizNumber].answer {
            
            let alert = UIAlertController(title: "正解", message: "ナイスアレンジ", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            
            print("正解！")
            // 正解ポイント追加
            point = point + 1
        } else {
            
            let alert = UIAlertController(title: "微妙", message: String(quizArray[quizNumber].answer), preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)

            print("不正解！")
        }
        
        // 次の問題へ
        updateQuiz()
    }
    
    // 選択肢3が押されたときの処理
    @IBAction func selectOption3() {
        // ボタン内の文言と、もともと設定していた答えが一致しているか確認
        if option3Button.titleLabel?.text == quizArray[quizNumber].answer {
            print("正解！")
            // 正解ポイント追加
            point = point + 1
        } else {
            let alert = UIAlertController(title: "微妙", message: String(quizArray[quizNumber].answer), preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            print("不正解！")
        }
        
        // 次の問題へ
        updateQuiz()
    }
    
    
}
    


