//
//  UIView+EmptyDataSet.swift
//  EmptyDataSet-Swift_Example
//
//  Created by CNCEMN188807 on 2024/11/20.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import EmptyDataSet_Swift

extension UIView {
    
    /// 添加空数据占位视图，UITableView  UICollectionView不需要手动隐藏，在reload时自动控制显示还是隐藏，如果是普通view，必须手动隐藏
    /// - Parameters:
    ///   - view: 空数据占位视图, 默认YLEmptyDataView
    ///   - edgeInsets: 占位视图边距， 默认充满父视图
    @discardableResult
    public func showEmptyDataView<T: UIView>(_ view: T = DefaultEmptyDataView(), edgeInsets: UIEdgeInsets) -> T {
        return EmptyDataSet.showEmptyDataView(for: self, emptyView: view, edgeInsets: edgeInsets)
    }
    
    /// 添加空数据占位视图，UITableView  UICollectionView不需要手动隐藏，在reload时自动控制显示还是隐藏，如果是普通view，必须手动隐藏
    /// - Parameters:
    ///   - view: 空数据占位视图, 默认DefaultEmptyDataView
    ///   - marginTop: 占位顶部边距， 默认导航栏+状态栏
    @discardableResult
    public func showEmptyDataView<T: UIView>(_ view: T = DefaultEmptyDataView(), marginTop: CGFloat = 0) -> T {
        return self.showEmptyDataView(view, edgeInsets: UIEdgeInsets(top: marginTop, left: 0, bottom: 0, right: 0))
    }

    
    /// 加载失败占位视图
    /// - Parameters:
    ///   - view: 加载失败占位视图， 默认DefaultLoadFailedView
    ///   - edgeInsets: 占位视图边距， 默认充满父视图
    @discardableResult
    public func showLoadFailedView<T: UIView>(_ view: T = DefaultLoadFailedView(), edgeInsets: UIEdgeInsets) -> T {
        return EmptyDataSet.showLoadFailedView(for: self, failedView: view, edgeInsets: edgeInsets)
    }
    
    /// 加载失败占位视图
    /// - Parameters:
    ///   - view: 加载失败占位视图
    ///   - marginTop: 占位顶部边距， 默认导航栏+状态栏
    @discardableResult
    public func showLoadFailedView<T: UIView>(_ view: T = DefaultLoadFailedView(), marginTop: CGFloat = 0) -> T {
        return EmptyDataSet.showLoadFailedView(for: self, failedView: view, edgeInsets: UIEdgeInsets(top: marginTop, left: 0, bottom: 0, right: 0))
    }
    
    /// 隐藏空页面占位视图 tableView collectionView在reload时自动隐藏
    public func hiddenEmptyDataView() {
        EmptyDataSet.hiddenEmptyDataView(for: self)
    }
    
    ///  隐藏加载失败占位视图
    public func hiddenLoadFailedView() {
        EmptyDataSet.hiddenLoadFailedView(for: self)
    }
}


