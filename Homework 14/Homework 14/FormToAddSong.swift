//
//  FormToAddSong.swift
//  Homework 14
//
//  Created by salome on 30.10.23.
//

import UIKit
class AddSongViewController: UIViewController,
                             UIImagePickerControllerDelegate, 
                                
UINavigationControllerDelegate {
    private let songTextField = UITextField()
    private let singerTextField = UITextField()
    private let addButton = UIButton(type: .system)
    private let saveButton = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        view.backgroundColor = .lightGray
        addButton.setTitle("Add Photo", for: .normal)
        addButton.addTarget(self, action:
                                
        #selector(addPhotoButtonTapped), for: .touchUpInside)
        
        view.addSubview(songTextField)
        view.addSubview(singerTextField)
        view.addSubview(addButton)
        view.addSubview(saveButton)
    }
    @objc func addPhotoButtonTapped() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
    }
    @objc func saveButtonTapped()
    {
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
        {
            if info[.originalImage] is UIImage {
                dismiss(animated: true, completion: nil)
            }
            func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
            {
                dismiss(animated: true, completion: nil)
            }}
    }
}
