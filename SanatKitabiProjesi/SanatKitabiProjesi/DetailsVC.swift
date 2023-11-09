//
//  DetailsVC.swift
//  SanatKitabiProjesi
//
//  Created by ayhanakkaya on 7.11.2023.
//

import UIKit
import CoreData

class DetailsVC: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer=UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        imageView.isUserInteractionEnabled=true
        let imageTapRecognizer=UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
       
    }
    
    @objc func selectImage(){
        
        let picker=UIImagePickerController()
        picker.delegate=self
        picker.sourceType = .photoLibrary
        picker.allowsEditing=true
        present(picker, animated: true,completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true,completion: nil)
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        let appDelegate=UIApplication.shared.delegate as! AppDelegate
        let context=appDelegate.persistentContainer.viewContext
        
        let newPaintings=NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: context)
        newPaintings.setValue(nameText.text!, forKey: "name")
        newPaintings.setValue(artistText.text, forKey: "artist")
        if let year = Int(yearText.text!){
            newPaintings.setValue(year, forKey: "year")
            
        }
        newPaintings.setValue(UUID(), forKey: "id")
        let data=imageView.image!.jpegData(compressionQuality: 0.5)
        newPaintings.setValue(data, forKey: "image")
        
        do{
            try context.save()
            print("success")
            
        }
        catch{
            print("error")
        }
        
        
        
        
        
    }
    

}
