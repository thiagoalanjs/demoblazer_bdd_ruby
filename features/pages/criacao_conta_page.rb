class CriacaoConta < SitePrism::Page
    element :link_signup, "#signin2"
    element :field_username, "#sign-username"
    element :field_password, "#sign-password"

    def click_link_signup
        link_signup.click
    end

    def click_sign_up
        click_button("Sign up")
    end

    def complete_registration
        field_username.set "#{Faker::Alphanumeric.alpha(number: 10)}"
        field_password.set "senha123qwe"
        find(".btn.btn-primary").click
    end
end