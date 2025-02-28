local language = 'English';

local function addLocales()
    DivineWindow.Locales[language].AvailableWindows.Friends = "Friends";
    DivineWindow.Locales[language].AvailableWindows.Khadgar = "Khadgar";
    DivineWindow.Locales[language].AvailableWindows.JainaProudmore = "Jaina Proudmore";
    DivineWindow.Locales[language].AvailableWindows.SpoilerBot = "Spoiler Bot";

    DivineWindow.Locales[language].Friends = {
        Khadgar = {
            WindowPart = {
                PART_1 = "Glass (67)",
                PART_2 = "Glass Arrows (12)",
                PART_3 = "Glass Moon: Top (14)",
                PART_4 = "Glass Moon: Left (15)",
                PART_5 = "Glass Moon: Right (15)",
                PART_6 = "Whitemane's Chapeau (7)",
                PART_7 = "Face (3)",
                PART_8 = "Arms (3)",
                PART_9 = "Torso (9)",
                FX_1 = "Whitemane's manes (4)",
                FX_2 = "Divine Reckoning (12)",
            }
        },
        JainaProudmore = {
            WindowPart = {
                PART_1 = "Glass (67)",
                PART_2 = "Glass Arrows (12)",
                PART_3 = "Glass Moon: Top (14)",
                PART_4 = "Glass Moon: Left (15)",
                PART_5 = "Glass Moon: Right (15)",
                PART_6 = "Whitemane's Chapeau (7)",
                PART_7 = "Face (3)",
                PART_8 = "Arms (3)",
                PART_9 = "Torso (9)",
                FX_1 = "Whitemane's manes (4)",
                FX_2 = "Divine Reckoning (12)",
            }
        },
        SpoilerBot = {
            WindowPart = {
                PART_1 = "Glass (67)",
                PART_2 = "Glass Arrows (12)",
                PART_3 = "Glass Moon: Top (14)",
                PART_4 = "Glass Moon: Left (15)",
                PART_5 = "Glass Moon: Right (15)",
                PART_6 = "Whitemane's Chapeau (7)",
                PART_7 = "Face (3)",
                PART_8 = "Arms (3)",
                PART_9 = "Torso (9)",
                FX_1 = "Whitemane's manes (4)",
                FX_2 = "Divine Reckoning (12)",
            }
        },
    }
end

addLocales();
