//
//  Schedule.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit

class ScheduleController: UIViewController {

    let monthyearselectButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("<                  December 2017                  >", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(handlemonthyearselect), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    @objc func handlemonthyearselect() {
        print ("just a demo month year selector for future enhancement")
    }
    let sundayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sun", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.isEnabled = false
        return button
    }()
    let mondayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Mon", for: .normal)
        button.setTitleColor(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.isEnabled = false
        return button
    }()
    let tuesdayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tue", for: .normal)
        button.setTitleColor(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.isEnabled = false
        return button
    }()
    let wednesdayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Wed", for: .normal)
        button.setTitleColor(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.isEnabled = false
        return button
    }()
    let thursdayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Thu", for: .normal)
        button.setTitleColor(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.isEnabled = false
        return button
    }()
    let fridayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Fri", for: .normal)
        button.setTitleColor(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.isEnabled = false
        return button
    }()
    let saturdayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sat", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.isEnabled = false
        return button
    }()
    let day1Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("1", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day1), for: .touchUpInside)
        return button
    }()
    @objc func day1() {
        print ("just a demo for day 1")
    }
    let day2Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("2", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day2), for: .touchUpInside)
        return button
    }()
    @objc func day2() {
        print ("just a demo for day 2")
    }
    let day3Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("3", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day3), for: .touchUpInside)
        return button
    }()
    @objc func day3() {
        print ("just a demo for day 3")
    }
    let day4Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("4", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day4), for: .touchUpInside)
        return button
    }()
    @objc func day4() {
        print ("just a demo for day 4")
    }
    let day5Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("5", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day5), for: .touchUpInside)
        return button
    }()
    @objc func day5() {
        print ("just a demo for day 5")
    }
    let day6Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("6", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day6), for: .touchUpInside)
        return button
    }()
    @objc func day6() {
        print ("just a demo for day 6")
    }
    let day7Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("7", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day7), for: .touchUpInside)
        return button
    }()
    @objc func day7() {
        print ("just a demo for day 7")
    }
    let day8Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("8", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day8), for: .touchUpInside)
        return button
    }()
    @objc func day8() {
        print ("just a demo for day 8")
    }
    let day9Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("9", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day9), for: .touchUpInside)
        return button
    }()
    @objc func day9() {
        print ("just a demo for day 9")
    }
    let day10Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("10", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day10), for: .touchUpInside)
        return button
    }()
    @objc func day10() {
        print ("just a demo for day 10")
    }
    let day11Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("11", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day11), for: .touchUpInside)
        return button
    }()
    @objc func day11() {
        print ("just a demo for day 11")
    }
    let day12Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("12", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day12), for: .touchUpInside)
        return button
    }()
    @objc func day12() {
        print ("just a demo for day 12")
    }
    let day13Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("13", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day13), for: .touchUpInside)
        return button
    }()
    @objc func day13() {
        print ("just a demo for day 13")
    }
    let day14Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("14", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day14), for: .touchUpInside)
        return button
    }()
    @objc func day14() {
        print ("just a demo for day 14")
    }
    let day15Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("15", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day15), for: .touchUpInside)
        return button
    }()
    @objc func day15() {
        print ("just a demo for day 15")
    }
    let day16Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("16", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day16), for: .touchUpInside)
        return button
    }()
    @objc func day16() {
        print ("just a demo for day 16")
    }
    let day17Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("17", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day17), for: .touchUpInside)
        return button
    }()
    @objc func day17() {
        print ("just a demo for day 17")
    }
    let day18Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("18", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day18), for: .touchUpInside)
        return button
    }()
    @objc func day18() {
        print ("just a demo for day 18")
    }
    let day19Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("19", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day19), for: .touchUpInside)
        return button
    }()
    @objc func day19() {
        print ("just a demo for day 19")
    }
    let day20Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("20", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day20), for: .touchUpInside)
        return button
    }()
    @objc func day20() {
        print ("just a demo for day 20")
    }
    let day21Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("21", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day21), for: .touchUpInside)
        return button
    }()
    @objc func day21() {
        print ("just a demo for day 21")
    }
    let day22Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("22", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day22), for: .touchUpInside)
        return button
    }()
    @objc func day22() {
        print ("just a demo for day 22")
    }
    let day23Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("23", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day23), for: .touchUpInside)
        return button
    }()
    @objc func day23() {
        print ("just a demo for day 23")
    }
    let day24Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("24", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day24), for: .touchUpInside)
        return button
    }()
    @objc func day24() {
        print ("just a demo for day 24")
    }
    let day25Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("25", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day25), for: .touchUpInside)
        return button
    }()
    @objc func day25() {
        print ("just a demo for day 25")
    }
    let day26Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("26", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day26), for: .touchUpInside)
        return button
    }()
    @objc func day26() {
        print ("just a demo for day 26")
    }
    let day27Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("27", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day27), for: .touchUpInside)
        return button
    }()
    @objc func day27() {
        print ("just a demo for day 27")
    }
    let day28Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("28", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day28), for: .touchUpInside)
        return button
    }()
    @objc func day28() {
        print ("just a demo for day 28")
    }
    let day29Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("29", for: .normal)
        button.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day29), for: .touchUpInside)
        return button
    }()
    @objc func day29() {
        print ("just a demo for day 29")
    }
    let day30Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("30", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day30), for: .touchUpInside)
        return button
    }()
    @objc func day30() {
        print ("just a demo for day 30")
    }
    let day31Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("31", for: .normal)
        button.setTitleColor(UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(day31), for: .touchUpInside)
        return button
    }()
    @objc func day31() {
        print ("just a demo for day 31")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 250, green: 250, blue: 250)
        navigationItem.title = "Schedule"
        
        view.addSubview(monthyearselectButton)
        
        view.addSubview(sundayButton)
        view.addSubview(mondayButton)
        view.addSubview(tuesdayButton)
        view.addSubview(wednesdayButton)
        view.addSubview(thursdayButton)
        view.addSubview(fridayButton)
        view.addSubview(saturdayButton)
        // row 1
        view.addSubview(day1Button)
        view.addSubview(day2Button)
        // row 2
        view.addSubview(day3Button)
        view.addSubview(day4Button)
        view.addSubview(day5Button)
        view.addSubview(day6Button)
        view.addSubview(day7Button)
        view.addSubview(day8Button)
        view.addSubview(day9Button)
        // row 3
        view.addSubview(day10Button)
        view.addSubview(day11Button)
        view.addSubview(day12Button)
        view.addSubview(day13Button)
        view.addSubview(day14Button)
        view.addSubview(day15Button)
        view.addSubview(day16Button)
        // row 4
        view.addSubview(day17Button)
        view.addSubview(day18Button)
        view.addSubview(day19Button)
        view.addSubview(day20Button)
        view.addSubview(day21Button)
        view.addSubview(day22Button)
        view.addSubview(day23Button)
        // row 5
        view.addSubview(day24Button)
        view.addSubview(day25Button)
        view.addSubview(day26Button)
        view.addSubview(day27Button)
        view.addSubview(day28Button)
        view.addSubview(day29Button)
        view.addSubview(day30Button)
        // row 6
        view.addSubview(day31Button)
        
        // MonthYear Selection Button
        monthyearselectButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 66, paddingLeft: 40, paddingBottom: -770, paddingRight: 40, width: 0, height: 40)
        
        sundayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        mondayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        tuesdayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 128, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        
        wednesdayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 187, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        thursdayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 246, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        fridayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 305, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        saturdayButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: 364, paddingBottom: 0, paddingRight: 0, width: 40, height: 20)
        
        // row 1
        day1Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 125, paddingLeft: 305, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day2Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 125, paddingLeft: 364, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        
        // row 2
        day3Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day4Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day5Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 128, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day6Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 187, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day7Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 246, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day8Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 305, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day9Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 175, paddingLeft: 364, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)

        // row 3
        day10Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day11Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day12Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 128, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day13Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 187, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day14Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 246, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day15Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 305, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day16Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 225, paddingLeft: 364, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        
        // row 4
        day17Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day18Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day19Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 128, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day20Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 187, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day21Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 246, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day22Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 305, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day23Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 275, paddingLeft: 364, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        
        // row 5
        day24Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day25Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 69, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day26Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 128, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day27Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 187, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day28Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 246, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day29Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 305, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        day30Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 364, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        
        // row 5
        day31Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 375, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        
        setuplogoButton()
        setupcalendarButton()
    }
    // logo imaga - left bar button item in nav bar
    fileprivate func setuplogoButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlelogo))
    }
    @objc func handlelogo() {
        print ("just a demo for handle logo")
    }
    
    // logout button - right bar button item in nav bar
    fileprivate func setupcalendarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "calendar").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlecalendar))
    }
    @objc func handlecalendar() {
        print ("just a demo for handle calendar")
    }

}
