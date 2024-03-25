//
//  ViewController.swift
//  image_prac
//
//  Created by Karthiga on 9/11/23.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var plus: UIButton!
    
    
    @IBOutlet weak var minus: UIButton!
    
    
    let A = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func plusact(_ sender: UIButton) {
        
        A.delegate = self
        A.sourceType = .savedPhotosAlbum
        self.present(A, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
    

    @IBAction func minus(_ sender: UIButton) {
        
        image.image = nil
        
    }
    
}

