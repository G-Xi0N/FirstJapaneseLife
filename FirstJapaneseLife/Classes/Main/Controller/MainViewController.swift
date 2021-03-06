//
//  MainViewController.swift
//  FirstJapaneseLife
//
//  Created by G-Xi0N on 2017/12/13.
//  Copyright © 2017年 G-Xi0N. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var facilityButton: UIButton = {
        let btn = UIButton(title: "施設")
        btn.addTarget(self, action: #selector(facilityButtonAction), for: .touchUpInside)
        return btn
    }()
    
    lazy var serviceButton: UIButton = {
        let btn = UIButton(title: "サービス")
        btn.addTarget(self, action: #selector(serviceButtonAction), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigation.bar.alpha = 0
        
        addSubviews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // MARK: - private
    func addSubviews() {

        let backgroundImgView = UIImageView(image: UIImage(named: "home_background"))
        view.addSubview(backgroundImgView)
        backgroundImgView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }

        let titleLabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 32)
        titleLabel.textColor = UIColor.cyan
        titleLabel.textAlignment = .center
        titleLabel.text = "初めての日本生活"
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(facilityButton)
        view.addSubview(serviceButton)
        
        facilityButton.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: UIScreen.width - 60, height: 36))
        }
        
        serviceButton.snp.makeConstraints { (make) in
            make.top.equalTo(facilityButton.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: UIScreen.width - 60, height: 36))
        }
    }

    // MARK: - action
    @objc func facilityButtonAction() {
        navigationController?.pushViewController(FacilityViewController(), animated: true)
    }
    
    @objc func serviceButtonAction() {
        navigationController?.pushViewController(ServiceViewController(), animated: true)
    }
}
