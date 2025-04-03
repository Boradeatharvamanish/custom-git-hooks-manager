#include <iostream>
#include <fstream>
#include <cstdlib>
#include <vector>
#include <filesystem>

namespace fs = std::filesystem;

const std::string HOOK_DIR = std::string(getenv("HOME")) + "/.git_hooks/";
const std::string LOG_FILE = HOOK_DIR + "hooks.log";

// Function to log actions
void log_action(const std::string& action) {
    std::ofstream logFile(LOG_FILE, std::ios::app);
    if (!logFile) {
        std::cerr << "❌ Error: Cannot write to log file." << std::endl;
        return;
    }
    logFile << action << std::endl;
    logFile.close();
}

// List all available hooks
void list_hooks() {
    std::cout << "📜 Available Hooks:\n";
    for (const auto& entry : fs::directory_iterator(HOOK_DIR)) {
        if (fs::is_regular_file(entry)) {
            std::cout << "🔹 " << entry.path().filename() << std::endl;
        }
    }
}

// Enable a hook
void enable_hook(const std::string& hook_name) {
    std::string command = "bash scripts/enable_hook.sh " + hook_name;
    system(command.c_str());
    log_action("Enabled hook: " + hook_name);
}

// Disable a hook
void disable_hook(const std::string& hook_name) {
    std::string command = "bash scripts/disable_hook.sh " + hook_name;
    system(command.c_str());
    log_action("Disabled hook: " + hook_name);
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: ./hooks_manager <command> [hook_name]" << std::endl;
        return 1;
    }

    std::string command = argv[1];

    if (command == "list") {
        list_hooks();
    } else if (command == "enable" && argc == 3) {
        enable_hook(argv[2]);
    } else if (command == "disable" && argc == 3) {
        disable_hook(argv[2]);
    } else {
        std::cerr << "Invalid command!" << std::endl;
        return 1;
    }

    return 0;
}
