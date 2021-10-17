//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by мас on 14.09.2021.
//

import UIKit

class ProfileHeaderView: UIView {

    
    var avatarImage = UIImageView()
    var nameLabel = UILabel()  //и это
    var profilLable = UILabel()//не понимаю чем отличаются?
    var button = UIButton()
    var textField = UITextField() // и это
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
     creatAvatarImage()
        creatButton()
        creatNameLabel()
        creatProfileLable()
        creatTextField()
    }
//Функция для фото
    func creatAvatarImage() {
      avatarImage.frame = CGRect(x: 26, y: 100, width: 70, height: 70) // Задаю размеры аватара

        avatarImage.image = UIImage(named: "SIMBA")
        avatarImage.contentMode = .scaleAspectFit
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2  //задать рамку черный круг
        avatarImage.layer.borderWidth = 3 //ширина рамки
        avatarImage.layer.borderColor = UIColor.white.cgColor //метод который дает цвет границы аватара
      avatarImage.clipsToBounds = true        // чтобы срабатывали обработки layer


        
        addSubview(avatarImage)
        
    }
    
    
    //функция для имени
    func creatNameLabel() {
        nameLabel.frame = CGRect(x:150, y: 100, width: frame.size.width / 2, height: 100)
        nameLabel.text = "Lion King"
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18) //
        
        addSubview(nameLabel)
    }
    
    //функция для кнопки
    func creatButton() {
//        button.frame = CGRect(x: , y: 350, width: frame .size.width /  1.5, height: 110)
     button.frame.size = CGSize(width: frame.size.width /  1.1, height: 110) //размер кнопки
     button.layer.position = CGPoint(x: frame.size.width /  2.1, y: 450) //позиция кнопки
        button.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5) //задаю центр нопки
        button.backgroundColor = .blue
        button.layer.cornerRadius = button.frame.size.width / 8
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.setTitle("text", for : .normal)
//        button.titleColor(for: UIColor (cgColor: .))
        button.setTitleColor(.white, for: .normal)

        button.addTarget(self, action: #selector(pressPlay), for: .touchUpInside)
      
        addSubview(button)
}
    @objc func pressPlay(){
        print("статус")
    }
    
    //где остальные использовать?
    
    
    func creatProfileLable() {
        let widthPofileLable : CGFloat = 100
        profilLable.frame = CGRect(x: (frame.size.width / 2) - (widthPofileLable / 2 ), y: 70, width: widthPofileLable, height: 70)
        profilLable.text = "Profile"
        profilLable.textColor = UIColor.black
        profilLable.font = UIFont.boldSystemFont(ofSize: 25) //
        
        addSubview(profilLable)
    }
    

    func creatTextField(){
        
     textField.frame = CGRect(x: frame.size.width /  3, y: 250, width: frame.size.width /  2, height: 40)
//        textField.center.x = frame.midX //центр по ширине
//    textField.center.y = frame.midY  //центр по  высоте
        textField.frame.size = CGSize(width: frame.size.width /  2, height: 25)
        textField.textColor = UIColor.gray
        textField.text = "The best cartoon EVER"

        textField.font = UIFont.systemFont(ofSize: 14)

            
        addSubview(textField)
    }
    
}






