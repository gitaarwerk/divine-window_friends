local function registerLockTable()
    DivineWindow.ConfigurationScreen.addToLockTable(
        "Friends", "Friends of Warcraft windows installed"
    );
end;

local function registerToAvailableWindowMenu()
    DivineWindow.Support.AvailableWindows.Friends.SallyWhitemane = {};
end

local function registerHints()
    DivineWindow.ConfigurationScreen.HintsTable["spoiler"] = "??? What's this? This is going to hurt!"
    DivineWindow.ConfigurationScreen.HintsTable["thousand"] = "A thousand stabs from the Cactuar. Ouch!"
end

local function registerToWindowIndex()
    DivineWindow.Windows.Friends = {
        Khadgar = {
            Directory = "Interface\\AddOns\\DivineWindow_Friends\\Src\\Windows\\Khadgar",
            FacetCount = {
                PART_1 = 67,
                PART_2 = 12,
                PART_3 = 14,
                PART_4 = 15,
                PART_5 = 15,
                PART_6 = 7,
                PART_7 = 4,
                PART_8 = 3,
                PART_9 = 9,
                FX_1 = 4,
                FX_2 = 12,
            }
        },
        JainaProudmore = {
            Directory = "Interface\\AddOns\\DivineWindow_Friends\\Src\\Windows\\JainaProudmore",
            FacetCount = {
                PART_1 = 33,
                PART_2 = 10,
                PART_3 = 15,
                PART_4 = 11,
                PART_5 = 14,
                PART_6 = 14,
                PART_7 = 13,
                PART_8 = 26,
                FX_1 = 6,
                FX_2 = 126,
            }
        },
    }

    if (DivineWindow.Utilities.tableContainsKey(DivineWindowGlobalVars.unlockTable, 7397856691)) then
        DivineWindow.Support.AvailableWindows.Friends.SpoilerBot = {};

        DivineWindow.Windows.Friends["SpoilerBot"] = {
            Directory = "Interface\\AddOns\\DivineWindow_Friends\\Src\\Windows\\SpoilerBot",
            FacetCount = {
                PART_1 = 16,
                PART_2 = 10,
                PART_3 = 5,
                PART_4 = 3,
                PART_5 = 13,
                PART_6 = 36,
                PART_7 = 36,
                PART_8 = 15,
                PART_9 = 15,
                FX_1 = 2,
                FX_2 = 6,
            }
        }

        table.insert(DivineWindow.Windows.Friends, "");
    end
end

local function addToMenu()
    -- If no other Friends are registered, register them.
    if (not DivineWindow.ConfigurationScreen.AvailableWindows.Friends) then
        DivineWindow.ConfigurationScreen.AvailableWindows.Friends = {}
    end

    DivineWindow.ConfigurationScreen.AvailableWindows.Friends["Khadgar"] =
    { "Friends", "Khadgar" }
    DivineWindow.ConfigurationScreen.AvailableWindows.Friends["JainaProudmore"] =
    { "Friends", "JainaProudmore" }

    if (DivineWindow.Utilities.tableContainsKey(DivineWindowGlobalVars.unlockTable, 7397856691)) then
        DivineWindow.ConfigurationScreen.AvailableWindows.Friends["SpoilerBot"] = { "Friends", "SpoilerBot" }
    end
end

local function eventHandler(self, event, ...)
    if (event == "ADDON_LOADED") then
        local addonName = ...;
        if (addonName == "DivineWindow_Friends") then
            registerToWindowIndex();
            registerToAvailableWindowMenu();
            registerLockTable();
            registerHints();
            addToMenu();
        end
    end
end

local function registerEvents()
    local frame = CreateFrame("FRAME", "DivineWindow_Init");
    frame:RegisterEvent("ADDON_LOADED");

    return frame;
end

local function init()
    DivineWindow.frame = registerEvents();
    DivineWindow.frame:SetScript("OnEvent", eventHandler);
end

-- Manual debug print before utilites are loaded.
if (DivineWindow.debugMode) then
    print("[DW loaded file]: init.lua");
end

init();
