//
//  EmailSender.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 16/02/24.
//

import Foundation
import MessageUI

class EmailSender: NSObject, MFMailComposeViewControllerDelegate {
    static let shared = EmailSender()
    
    func sendEmail(subject: String, body: String, to recipients: [String]) {
        guard MFMailComposeViewController.canSendMail() else {
            print("Não é possível enviar e-mails neste dispositivo")
            return
        }

        let mailComposeViewController = MFMailComposeViewController()
        mailComposeViewController.setSubject(subject)
        mailComposeViewController.setMessageBody(body, isHTML: false)
        mailComposeViewController.setToRecipients(recipients)
        mailComposeViewController.mailComposeDelegate = self

        UIApplication.shared.windows.first?.rootViewController?.present(mailComposeViewController, animated: true, completion: nil)
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
