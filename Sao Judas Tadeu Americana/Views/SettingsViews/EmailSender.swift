//
//  EmailSender.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 16/02/24.
//

import Foundation
import MessageUI

class EmailSender: NSObject, MFMailComposeViewControllerDelegate {
//    static let shared = EmailSender()
//    
//    func sendEmail(subject: String, body: String, to recipients: [String]) {
//        guard MFMailComposeViewController.canSendMail() else {
//            print("Não é possível enviar e-mails neste dispositivo")
//            return
//        }
//
//        let mailComposeViewController = MFMailComposeViewController()
//        mailComposeViewController.setSubject(subject)
//        mailComposeViewController.setMessageBody(body, isHTML: false)
//        mailComposeViewController.setToRecipients(recipients)
//        mailComposeViewController.mailComposeDelegate = self
//
//        UIApplication.shared.windows.first?.rootViewController?.present(mailComposeViewController, animated: true, completion: nil)
//    }
//
//    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
//        controller.dismiss(animated: true, completion: nil)
//    }
    
        public static let shared = EmailSender()
        private override init() {
            //
        }
        
        func sendEmail(subject:String, body:String, to:String){
            if !MFMailComposeViewController.canSendMail() {
                print("No mail account found")
                // Todo: Add a way to show banner to user about no mail app found or configured
                // Utilities.showErrorBanner(title: "No mail account found", subtitle: "Please setup a mail account")
                return //EXIT
            }
            
            let picker = MFMailComposeViewController()
            
            picker.setSubject(subject)
            picker.setMessageBody(body, isHTML: true)
            picker.setToRecipients([to])
            picker.mailComposeDelegate = self
            
            EmailSender.getRootViewController()?.present(picker, animated: true, completion: nil)
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            EmailSender.getRootViewController()?.dismiss(animated: true, completion: nil)
        }
        
        static func getRootViewController() -> UIViewController? {
            // OR If you use SwiftUI 2.0 based WindowGroup try this one
            UIApplication.shared.windows.first?.rootViewController
        }
}
