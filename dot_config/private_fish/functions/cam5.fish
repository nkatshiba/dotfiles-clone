function cam5
    # killall droidcam-cli
    # killall mpv
    # hyprctl dispatch exec droidcam-cli -- -dev=/dev/video0 -size=1080x1920 192.168.1.109 4747
    killall droidcam
    hyprctl dispatch exec droidcam-cli -- -dev=/dev/video0 -size=1080x1920 192.168.1.119 4747
    hyprctl dispatch exec -- mpv av://v4l2:/dev/video0 --profile=low-latency --untimed --no-terminal --force-window
    # nohup mpv av://v4l2:/dev/video0 --profile=low-latency --untimed --no-terminal --force-window --video-rotate=90 &;disown
    # nohup mpv av://v4l2:/dev/video0 --profile=low-latency --untimed --no-terminal --force-window --video-rotate=90
    # nohup mpv av://v4l2:/dev/video0 --profile=low-latency --untimed --no-terminal --force-window
end


function cam5-run

    hyprctl dispatch exec mpv -- av://v4l2:/dev/video0 --profile=low-latency --untimed --no-terminal --force-window --video-rotate=180

end
