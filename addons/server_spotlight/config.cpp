class CfgPatches {
    class server_spotlight {
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.6;
        requiredAddons[] = {"A3_Weapons_F"};
        version = 2.0;
        versionStr = 2.0;
        versionAr[] = {2, 0};
        author = "TF47 Desty";
    };
};

class RscStandardDisplay;
class RscDisplayMain: RscStandardDisplay
{
    class Spotlight
    {
        class AwesomeServer
        {
            text = "JOIN [TF47] MilSim Public #1"; // Text displayed on the square button, converted to upper-case
            textIsQuote = 0; // 1 to add quotation marks around the text
            picture = "z\TF47\addons\server_spotlight\tf47_patch_ger.paa"; // Square picture, ideally 512x512  --- RAY MACH SCHNELLER
            video = "z\TF47\addons\server_spotlight\menuvid.ogv"; // Video played on mouse hover --- RAY MACH SCHNELLER
            //action = "0 = [_this, 'your.domain.name', '2302', 'yourpasshere'] execVM '\server_spotlight\joinServer.sqf';";
            action = "0 = [_this, '195.201.81.83', '2302', ''] execVM 'z\TF47\addons\server_spotlight\joinServer.sqf';";
            actionText = "JOIN [TF47] MilSim Public #1"; // Text displayed in top left corner of on-hover white frame
            condition = "true"; // Condition for showing the spotlight
        };
    };
};
