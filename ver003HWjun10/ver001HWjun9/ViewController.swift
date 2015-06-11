//  ViewController.swift
//  ver001HWjun9 updated to use naked switches and a single compound array
//               =========================================================
//
//  Richard H Woolley on 6/11/15    (A REMAKE ... SEE ^^^^)

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet var tableView: UITableView!

  var returnValue = 0
  var sectionLable = " "
  let numberOfSections = 7

  var arrayOfGreatMen = [["Richard P. Feynman", "Erwin Schrodinger", "Francis Crick", "Victor J. Stenger", "Steven Weinberg", "Cinton Richard Dawkins", "Carl Sagan", "Niel DeGrasse Tyson", "Aubrey David Nicholas Jasper de Grey"], ["Paul Dirac", "Paul Erdos"], ["Francis Collins"], ["George Robert Price"], ["Alan Turing", "William Shockley", "Marvin Lee Minsky"], ["Brad Johnson", "Linus Torvalds", "Richard Stallman"], ["Steven Pinker", "Andrew McAfee", "Christopher Hitchens", "Jacque Fresco", "Daniel Edwin Barker", "Aubrey David Nicholas Jasper de Grey", "James Hamilton Zwinge, aka: James Randi", "Steven Gibson", "Robert McNair Price"]]

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    view.backgroundColor = UIColor.yellowColor()
/*
      arrayOfGreatMen[0].append("Bill Nye")
      arrayOfGreatMen[1].append("Rick Woolley")
      arrayOfGreatMen[2].append("Rick Woolley")
      arrayOfGreatMen[3].append("Rick Woolley")
      arrayOfGreatMen[4].append("Steve Jobs")
      arrayOfGreatMen[5].append("Matthijs Hollemans")
      arrayOfGreatMen[6].append("Rick Woolley")
*/
  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.view.backgroundColor = UIColor.grayColor()
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
  }

  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return numberOfSections
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      switch (section) {
        case 0:
          returnValue = arrayOfGreatMen[0].count
        case 1:
          returnValue = arrayOfGreatMen[1].count
        case 2:
          returnValue = arrayOfGreatMen[2].count
        case 3:
          returnValue = arrayOfGreatMen[3].count
        case 4:
          returnValue = arrayOfGreatMen[4].count
        case 5:
          returnValue = arrayOfGreatMen[5].count
        case 6:
          returnValue = arrayOfGreatMen[6].count
        default:
          break
      }
      return returnValue
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    cell.backgroundColor = UIColor.whiteColor()
    let nameToDisplay = arrayOfGreatMen[returnValue][indexPath.row]
      switch (indexPath.section) {
        case 0:
          let nameToDisplay = arrayOfGreatMen[0][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 1:
          let nameToDisplay = arrayOfGreatMen[1][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 2:
          let nameToDisplay = arrayOfGreatMen[2][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 3:
          let nameToDisplay = arrayOfGreatMen[3][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 4:
          let nameToDisplay = arrayOfGreatMen[4][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 5:
          let nameToDisplay = arrayOfGreatMen[5][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        case 6:
          let nameToDisplay = arrayOfGreatMen[6][indexPath.row]
          cell.textLabel?.text = nameToDisplay
        default:
          break
      }
      return cell
    }

  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      switch (section) {
        case 0:
          sectionLable = "Scientists who were Sane"
        case 1:
          sectionLable = "Scientists who were mostly Sane"
        case 2:
          sectionLable = "Partially Insane Scientists"
        case 3:
          sectionLable = "Scientists who Went Bonkers"
        case 4:
          sectionLable = "Technologists"
        case 5:
          sectionLable = "Great Programmers"
        case 6:
          sectionLable = "Social Scientists"
        default:
          break
      }
      return sectionLable
  }
}
