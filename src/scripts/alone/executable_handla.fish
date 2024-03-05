#! /usr/bin/env fish

hyprctl dispatch exec [workspace 19] -- zathura 'https://dr.coop.se/Butik/?store=126307' 'https://dr.coop.se/Butik/?store=136030'
hyprctl dispatch exec [workspace 19] -- qbpm launch handla
