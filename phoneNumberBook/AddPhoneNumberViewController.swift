//
//  AddPhoneNumberViewController.swift
//  phoneNumberBook
//
//  Created by t2023-m0113 on 7/16/24.
//

import UIKit

class AddPhoneNumberViewController: UIViewController {
    
    let profileImage = UIImageView()
    let addImageBtn = UIButton()
    let nameTextField = UITextField()
    let phoneNumberTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        navigationItem.title = "연락처 추가"
        
        let applyBtn = UIBarButtonItem(title: "적용", style: .plain, target: self, action: #selector(applyButtonTapped))
        navigationItem.rightBarButtonItem = applyBtn
        
        setProfileImage()
        setAddImageBtn()
        setNameTextField()
        setPhoneNumberTextField()
    }
    
    func setProfileImage() {
        profileImage.layer.cornerRadius = 100
        profileImage.layer.borderColor = UIColor.lightGray.cgColor
        profileImage.layer.borderWidth = 5
        profileImage.backgroundColor = UIColor.white
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImage)
        
        NSLayoutConstraint.activate([
            profileImage.widthAnchor.constraint(equalToConstant: 200),
            profileImage.heightAnchor.constraint(equalToConstant: 200),
            profileImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setAddImageBtn() {
        addImageBtn.setTitle( "랜덤 이미지 생성", for: .normal)
        addImageBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        addImageBtn.configuration = .plain()
        addImageBtn.setTitleColor(.lightGray, for: .normal)
        
        view.addSubview(addImageBtn)
        addImageBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addImageBtn.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 10),
            addImageBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func setNameTextField() {
        nameTextField.frame.size.height = 22
        nameTextField.borderStyle = .roundedRect
        nameTextField.placeholder = "이름 입력"
        nameTextField.clearButtonMode = .always
        nameTextField.clearsOnBeginEditing = false
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: addImageBtn.bottomAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func setPhoneNumberTextField() {
        phoneNumberTextField.frame.size.height = 22
        phoneNumberTextField.borderStyle = .roundedRect
        phoneNumberTextField.placeholder = "연락처 입력"
        phoneNumberTextField.clearButtonMode = .always
        phoneNumberTextField.clearsOnBeginEditing = false
        
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(phoneNumberTextField)
        
        NSLayoutConstraint.activate([
            phoneNumberTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    @objc func applyButtonTapped() {
        print("새로운 연락처가 추가되었습니다.")
    }
    
}
