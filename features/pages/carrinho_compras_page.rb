class CarrinhoCompras < SitePrism::Page

    def accept_popup
        page.driver.browser.switch_to.alert.accept
    end

    def add_cellphone_cart
        click_link("Phones")
        click_link("Samsung galaxy s6")
        find(".btn.btn-success.btn-lg").click
        wait_elements
        accept_popup
        visit "/"
    end

    def add_monitor_cart 
        click_link("Monitors")
        click_link("ASUS Full HD")
        find(".btn.btn-success.btn-lg").click
        wait_elements
        accept_popup
        visit "/"
    end

    def add_laptop_cart
        click_link("Laptops")
        click_link("Sony vaio i7")
        find(".btn.btn-success.btn-lg").click
        wait_elements
        accept_popup
    end

    def remove_monitor_cart
        line1 = find(:xpath, "/html/body/div[6]/div/div[1]/div/table/tbody/tr[1]/td[2]").text
        line2 = find(:xpath, "/html/body/div[6]/div/div[1]/div/table/tbody/tr[2]/td[2]").text
        line3 = find(:xpath, "/html/body/div[6]/div/div[1]/div/table/tbody/tr[3]/td[2]").text
    
        if line1 == "ASUS Full HD"
            find(:xpath, "//*[@id='tbodyid']/tr[1]/td[4]/a").click
            wait_elements
        elsif  line2 == "ASUS Full HD"  
            find(:xpath, "//*[@id='tbodyid']/tr[2]/td[4]/a").click
            wait_elements
        elsif  line3 == "ASUS Full HD"  
            find(:xpath, "//*[@id='tbodyid']/tr[3]/td[4]/a").click
            wait_elements
        end    
    end
end