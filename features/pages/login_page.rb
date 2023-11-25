class Login < SitePrism::Page
    element :link_login, "#login2"
    element :field_login_username, "#loginusername"
    element :field_login_password, "#loginpassword"

    def click_link_log_in
        link_login.click
    end

    def click_log_in
        click_button("Log in")
    end

    def login_authentication
        field_login_username.set "thiagoqa"
        field_login_password.set "thiagoqa"
        find(".btn.btn-primary").click
    end
end