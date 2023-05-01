//
//  HomeViewController.swift
//  NewsReader
//
//  Created by Sulthon on 01/05/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var latestNewsList: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        loadLatestNews()
    }
    
    func loadLatestNews() {
        ApiServices.shared.loadLatestNews { result in
            switch result {
            case .success(let newsList):
                self.latestNewsList = newsList
                self.tableView.reloadData()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return latestNewsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "news_cell", for: indexPath)
        
        let news = latestNewsList[indexPath.row]
        cell.textLabel?.text = "\(indexPath.row + 1). " + news.title
        
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let news = latestNewsList[indexPath.row]
        
        let alert = UIAlertController(title: news.title, message: news.url, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okey", style: .default))
        
        present(alert, animated: true)
    }
}
