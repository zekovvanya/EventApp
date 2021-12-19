//
//  ViewController.swift
//  EventApp1
//
//  Created by Иван Зеков on 18/12/2021.
//  Copyright © 2021 Иван Зеков. All rights reserved.
//

import UIKit
import CoreData

class NoteDetailVC: UIViewController {

    @IBOutlet weak var descTV: UITextView!
    @IBOutlet weak var titleTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveAction(_ sender: Any)
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Note", in: context)
        let newNote = Note(entity: entity!, insertInto: context)
        
        newNote.id = noteList.count as NSNumber
        newNote.title = titleTF.text
        newNote.desc = descTV.text
        do
        {
            try context.save()
            noteList.append(newNote)
            navigationController?.popViewController(animated: true)
        }
        catch
        {
            print("Error")
        }
    }
    
}

