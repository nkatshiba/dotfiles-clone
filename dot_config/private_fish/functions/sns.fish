# sneakers-n-stuff / zalando
function sns
    set ZALANDO "https://www.zalando.se/man/__Storlek-43.44/?q=air+force+1&order=activation_date"
    set SNS "https://www.sneakersnstuff.com/sv/search/searchbytext/air%20force%201?p=257659&p=950&p=807&p=257717&orderBy=Published"

    open_in_qute $ZALANDO
    open_in_qute $SNS
end
