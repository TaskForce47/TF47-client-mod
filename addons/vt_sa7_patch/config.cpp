#include "script_component.hpp"
class CfgPatches {
    class ADDON {
        name = COMPONENT;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"VN"};
        author = "TF47 Dragon";
        VERSION_CONFIG;
    };
};

#include "CfgAmmo.hpp"