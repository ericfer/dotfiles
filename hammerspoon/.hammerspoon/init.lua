-- =========================================
-- Creating Global Shortcuts
-- =========================================

-- Base key(s) for the shortcut
local modifiers = {"alt"}

-- Applications and its keys
local apps = {
    l = "Clockify Desktop",
    s = "Slack",
    t = "Sublime Text",
    i = "Calendar",
    c = "Google Chrome",
    e = "Evernote",
    d = "Finder",
    p = "Preview",
    v = "Visual Studio Code",
    r = "Ghostty",
    m = "Activity Monitor",
}

-- URLs
local urls = {
    w = "https://www.youtube.com/playlist?list=WL",
    z = "https://www.linkedin.com/in/ericfer/",
}

-- Register applications shortcuts
for key, appName in pairs(apps) do
    hs.hotkey.bind(modifiers, key, function()
        hs.application.launchOrFocus(appName)
    end)
end

-- Register URLs shortcuts
for key, url in pairs(urls) do
    hs.hotkey.bind(modifiers, key, function()
        hs.urlevent.openURL(url)
    end)
end