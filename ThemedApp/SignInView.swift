//
//  SignInView.swift
//  ThemedApp
//
//  Created by Sparkcode on 4/28/21.
//

import SwiftUI

struct SignInView: View {
    
    @Environment(\.theme) var theme
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0,
            content: {
                titleText
                textFields
                forgotPasswordButton
                Spacer()
                signInButton
            }
        )
        .padding(20)
        .background(Color.clear.adaptiveBackgroundColor(.backgroundPrimary).ignoresSafeArea())
        
    }
}

private extension SignInView {
    
    var titleText: some View {
        Text("Sparkcode")
        .adaptiveFont(.title)
        .adaptiveForegroundColor(.textSecondary)
        .padding(.bottom, 40)
    }
    
    var textFields: some View {
        VStack(
            alignment: .center,
            spacing: 15,
            content: {
                createTextField(
                    placeholder: "Email",
                    text: $email,
                    isSecure: false
                )
                createTextField(
                    placeholder: "Password",
                    text: $password,
                    isSecure: true
                )
            }
        )
        .adaptiveFont(.body)
    }
    
    @ViewBuilder
    func createTextField(
        placeholder: String,
        text: Binding<String>,
        isSecure: Bool
    ) -> some View {
        CustomTextField(
            placeholder: placeholder,
            isSecure: isSecure,
            text: text
        )
        .padding(15)
        .adaptiveBackgroundColor(.backgroundSecondary)
        .adaptiveForegroundColor(.textPrimary)
        .placeholderColor(.textPlaceholder)
        .autocapitalization(.none)
        .disableAutocorrection(true)
        .cornerRadius(10)
    }
    
    var forgotPasswordButton: some View {
        HStack {
            Button(
                "Forgot Password?",
                action: tappedForgotPassword
            )
            .adaptiveForegroundColor(.actionPrimary)
            .adaptiveFont(.textLink)
            .padding(.top, 15)
            Spacer()
        }
    }
    
    var signInButton: some View {
        Button(
            action: tappedSignIn,
            label: {
                Text("SIGN IN")
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .adaptiveBackgroundColor(.actionPrimary)
                .cornerRadius(15)
            }
        )
        .adaptiveForegroundColor(.backgroundPrimary)
        .adaptiveFont(.primaryButton)
    }
    
    func tappedForgotPassword() {
        
    }
    
    func tappedSignIn() {
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignInView()
            
            SignInView()
            .environment(\.colorScheme, .dark)
        }
    }
}
