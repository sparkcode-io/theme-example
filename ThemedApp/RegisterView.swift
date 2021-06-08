//
//  RegisterView.swift
//  ThemedApp
//
//  Created by Sparkcode on 4/30/21.
//

import UIKit
import AppTheme
import SwiftUI

protocol ThemeableViewController {
    var theme: ThemeProvider { get }
}

extension ThemeableViewController where Self: UIViewController {
    func adaptiveColor(
        _ style: ColorStyle
    ) -> UIColor {
        return theme.adaptiveColor(
            style,
            isDarkMode: self.traitCollection.userInterfaceStyle == .dark,
            prefersHighContrast: self.traitCollection.accessibilityContrast == .high
        )
    }
    
    func adaptiveFont(
        _ style: FontStyle
    ) -> UIFont {
        return theme.adaptiveFont(
            style,
            contentSize: self.traitCollection.preferredContentSizeCategory,
            prefersBoldText: self.traitCollection.legibilityWeight == .bold
        )
    }
}

class RegisterViewController: UIViewController, ThemeableViewController {
    
    var theme: ThemeProvider = appTheme
    
    @IBOutlet private (set) weak var titleLabel: UILabel!
    @IBOutlet private (set) weak var nameField: UITextField!
    @IBOutlet private (set) weak var emailField: UITextField!
    @IBOutlet private (set) weak var passwordField: UITextField!
    @IBOutlet private (set) weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        refreshUI()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        guard self.traitCollection != previousTraitCollection else {
            return
        }
        refreshUI()
    }
}

private extension RegisterViewController {
    
    func setupUI() {
        self.registerButton.layer.cornerRadius = 10
        self.titleLabel.text = "Sparkcode"
        self.registerButton.setTitle("REGISTER", for: .normal)
    }
    
    func refreshUI() {
        refreshColors()
        refreshFonts()
    }
    
    func refreshColors() {
        self.view.backgroundColor = self.adaptiveColor(.backgroundPrimary)
        self.titleLabel.textColor = self.adaptiveColor(.textSecondary)
        self.nameField.backgroundColor = self.adaptiveColor(.backgroundSecondary)
        self.emailField.backgroundColor = self.adaptiveColor(.backgroundSecondary)
        self.passwordField.backgroundColor = self.adaptiveColor(.backgroundSecondary)
        self.nameField.textColor = self.adaptiveColor(.textPrimary)
        self.emailField.textColor = self.adaptiveColor(.textPrimary)
        self.passwordField.textColor = self.adaptiveColor(.textPrimary)
        let placholderAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : self.adaptiveColor(.textPlaceholder)
        ]
        self.nameField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: placholderAttributes)
        self.emailField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: placholderAttributes)
        self.passwordField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: placholderAttributes)
        
        self.registerButton.backgroundColor = self.adaptiveColor(.actionPrimary)
        self.registerButton.setTitleColor(self.adaptiveColor(.backgroundPrimary), for: .normal)
    }
    
    func refreshFonts() {
        self.titleLabel.font = self.adaptiveFont(.title)
        self.nameField.font = self.adaptiveFont(.body)
        self.emailField.font = self.adaptiveFont(.body)
        self.passwordField.font = self.adaptiveFont(.body)
        self.registerButton.titleLabel?.font = self.adaptiveFont(.primaryButton)
    }
}

struct RegisterView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "RegisterViewController")
        return vc 
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

#if DEBUG
struct RegisterViewController_Previews: PreviewProvider {
    
    static let storyboard = UIStoryboard(name: "Main", bundle: .main)
    
    static var previews: some View {
        Group {
            ViewControllerPreview<RegisterViewController>(
                storyboard: storyboard,
                vcId: "RegisterViewController",
                config: { (vc) in
                    vc.loadViewIfNeeded()
                    vc.nameField.text = "Some name"
                }
            )
            
            ViewControllerPreview<RegisterViewController>(
                storyboard: storyboard,
                vcId: "RegisterViewController",
                config: { (vc) in
                    vc.loadViewIfNeeded()
                    vc.nameField.text = "Some name"
                }
            )
            .environment(\.colorScheme, .dark)
        }
    }
}
#endif
