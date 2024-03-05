config.load_autoconfig()
config.source('/home/tildavimer/.config/qutebrowser/config.py')

c.window.title_format = 'Perplexity'
c.colors.webpage.darkmode.enabled = False

c.url.start_pages = ['https://perplexity.ai/']

# Darkmode
c.colors.webpage.darkmode.enabled = True
# lightness-cielab: Modify colors by converting them to CIELAB color space and inverting the L value. Not available with Qt < 5.14.
# lightness-hsl: Modify colors by converting them to the HSL color space and inverting the lightness (i.e. the "L" in HSL).
# brightness-rgb: Modify colors by subtracting each of r, g, and b from their maximum value.
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
# always: Apply dark mode filter to all images.
# never: Never apply dark mode filter to any images.
# smart: Apply dark mode based on image content. Not available with Qt 5.15.0.
# smart-simple: On QtWebEngine 6.6, use a simpler algorithm for smart mode (based on numbers of colors and transparency), rather than an ML-based model. Same as smart on older QtWebEnigne versions.
c.colors.webpage.darkmode.policy.images = 'never'
# auto: Use the system-wide color scheme setting.
# light: Force a light theme.
# dark: Force a dark theme.
c.colors.webpage.preferred_color_scheme = 'dark'
