function ship
    set INSTABOX "https://track.instabox.io/sv-SE/ZA010001122183"
    # set SCHENKER "https://www.dbschenker.com/se-sv/foretag/kontakta-oss/spara-och-sok?language=sv&reference_number=573313432007339003"
    # set AMAZON "https://www.amazon.se/gp/your-account/order-details/ref=ppx_yo_dt_b_order_details_o00?ie=UTF8&orderID=406-8640099-9311531"
    # set ZALANDO "https://www.zalando.se/myaccount/order-detail/11104050180426"
    set BRING1 "https://tracking.bring.com/tracking/373810303010241598?lang=en"
    set BRING2 "https://tracking.bring.com/tracking/373810303010229626?lang=en"

    # thorium-browser $INSTABOX $SCHENKER $AMAZON $ZALANDO
    
    kitten @ launch nohup thorium-browser $INSTABOX $BRING1 $BRING2 &;disown
    kitten @ close-window --self
end

