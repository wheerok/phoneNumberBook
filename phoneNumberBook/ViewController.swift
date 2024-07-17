import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    let addBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationItem.title = "친구 목록"
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        
        let setAddBtn = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(goToAddphoneNumberView))
        navigationItem.rightBarButtonItem = setAddBtn
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! TableViewCell
        cell.cellImageView.frame.size.width = 50
        cell.cellImageView.frame.size.height = 50
        cell.cellImageView.layer.cornerRadius = 25
        cell.cellImageView.layer.borderColor = UIColor.lightGray.cgColor
        cell.cellImageView.layer.borderWidth = 3
        
        cell.titleLabel.text = "name \(indexPath.row + 1)"
        cell.subtitleLabel.text = "010-0000-0000"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    @objc func goToAddphoneNumberView() {
        let newpageView = AddPhoneNumberViewController()
        navigationController?.pushViewController(newpageView, animated: true)
    }
}
