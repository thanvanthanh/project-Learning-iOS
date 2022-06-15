//
//  ViewController.swift
//  HandWashing
//
//  Created by Taof on 5/6/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var views = [ItemView]()
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createData()
        configPageControl()
        setupItem(views: views)
        
        scrollView.delegate = self
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { [weak self] (_) in
            guard let strongSelf = self else { return }
            if strongSelf.pageControl.currentPage < strongSelf.views.count-1 {
                strongSelf.pageControl.currentPage += 1
            } else {
                strongSelf.pageControl.currentPage = 0
            }
            
            strongSelf.scrollView.contentOffset = CGPoint(x: strongSelf.screenWidth * CGFloat(strongSelf.pageControl.currentPage),
                                                          y: 0)
        })
    }

    func createData(){
        let item1: ItemView = Bundle.main.loadNibNamed("ItemView", owner: self, options: nil)?.first as! ItemView
        item1.imageView.image = UIImage(named: "1")
        item1.textView.text = "Làm ướt hai bàn tay bằng nước sạch. Thoa xà phòng vào lòng bàn tay. Chà xát hai lòng bàn tay vào nhau"
        
        let item2: ItemView = Bundle.main.loadNibNamed("ItemView", owner: self, options: nil)?.first as! ItemView
        item2.imageView.image = UIImage(named: "2")
        item2.textView.text = "Dùng ngón tay và lòng bàn tay này cuốn và xoay lần lượt từng ngón của bàn tay kia và ngược lại"
        
        let item3: ItemView = Bundle.main.loadNibNamed("ItemView", owner: self, options: nil)?.first as! ItemView
        item3.imageView.image = UIImage(named: "3")
        item3.textView.text = "Dùng lòng bàn tay này chà xát chéo lên mu bàn tay kia và ngược lại"
        
        let item4: ItemView = Bundle.main.loadNibNamed("ItemView", owner: self, options: nil)?.first as! ItemView
        item4.imageView.image = UIImage(named: "4")
        item4.textView.text = "Dùng đầu ngón tay của bàn tay này miết vào kẽ giữa các ngón của bàn tay kia và ngược lại"
        
        let item5: ItemView = Bundle.main.loadNibNamed("ItemView", owner: self, options: nil)?.first as! ItemView
        item5.imageView.image = UIImage(named: "5")
        item5.textView.text = "Xả cho tay sạch hết xà phòng dưới nguồn nước sạch. Lau khô tay bằng khăn hoặc giấy sạch"
        
        
        views.append(contentsOf: [item1, item2, item3, item4, item5])
    }
    
    func configPageControl(){
        pageControl.currentPage = 0
        pageControl.numberOfPages = views.count
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .red
    }

    func setupItem(views: [ItemView]){
        scrollView.frame = CGRect(x: 0, y: 100,
                                  width: screenWidth,
                                  height: screenHeight)
        scrollView.contentSize = CGSize(width: screenWidth * CGFloat(views.count),
                                        height: screenHeight-200)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        for i in 0..<views.count {
            views[i].frame = CGRect(x: screenWidth * CGFloat(i),
                                     y: 100,
                                     width: screenWidth,
                                     height: screenHeight-200)
            scrollView.addSubview(views[i])
        }
    }
}

extension ViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/screenWidth)
        pageControl.currentPage = Int(pageIndex)
    }
}
