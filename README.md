# custom-git-hooks-manager
# Discription 
Git Hooks Management System is a project that simplifies the process of enabling, disabling, and managing Git hooks, which are scripts executed before or after Git events like commits, pushes, or merges. Git hooks are crucial for automating workflows, enforcing coding standards, and enhancing security by preventing incorrect commits or ensuring code quality. This project allows users to easily activate and track pre-commit, pre-push, and post-merge hooks, ensuring better version control practices. It includes scripts to manage hooks efficiently, log their execution, and integrate them seamlessly into Git operations. By automating repetitive tasks and enforcing consistency, this project enhances productivity and reliability in software development workflows.

# Features & Functionality 
This project makes it easy to manage Git hooks by allowing users to enable, disable, and track them without manually editing the `.git/hooks` directory. Unlike traditional methods that require manual setup, it automates the process using scripts, ensuring smooth integration and execution. The system provides a centralized way to control hooks, keeps logs of their activity, and offers flexibility for enforcing coding standards and automating tasks. With its structured approach, it improves workflow efficiency and helps maintain code quality in a simple and effective way.

# Approach 
1.Centralized Hook Management – Instead of manually placing and managing hooks in .git/hooks, the project stores custom hooks in a dedicated directory (.git_hooks) for easy access and control.<br/>

2.Enable/Disable Hooks with Scripts – Custom scripts (enable.sh and disable.sh) allow users to activate or deactivate hooks without modifying Git’s internal structure. This ensures flexibility and prevents accidental changes.<br/>

3.Automated Hook Execution – Once enabled, hooks run automatically during Git operations like commits, pushes, or merges, enforcing coding standards and automation without manual intervention.<br/>

4.Logging for Tracking – Every hook activation or deactivation is recorded in a log file (hooks.log), providing a clear history of changes for better tracking and debugging.<br/>

5.Seamless Integration – The system ensures that hooks work smoothly with Git operations without interfering with normal workflows, making it easy for developers to enforce rules without extra effort.<br/>

6.Efficiency & Optimization – By avoiding direct edits to .git/hooks, the project keeps Git repositories clean and structured while ensuring quick and hassle-free hook management.

# File Strcture and File Functions
**install.sh** – Automates the setup process by initializing hooks and ensuring necessary scripts are in place.<br/>

**hooks_manager.cpp** – The core program written in C++ that provides an interactive CLI to enable, disable, and list hooks efficiently. It ensures optimized execution and structured management of Git hooks.<br/>

**enable_hook.sh** – Activates a specific Git hook.<br/>

**disable_hook.sh**– Deactivates a specific Git hook.<br/>

**list_hooks.sh**– Displays all available hooks for better visibility.<br/>

**log_hooks.sh**– Records hook-related activities in a log file for tracking and debugging.<br/>

**pre-commit**– Runs before committing code to enforce code quality.<br/>

**pre-push**– Triggers before pushing to prevent invalid code from reaching the repository.<br/>

**post-merge**– Executes after merging to handle updates like dependencies or documentation updates.<br/>

**github/**– Contains enforce_hooks.yml, a GitHub Actions workflow to ensure hooks are enforced in remote repositories for CI/CD integration.<br/>
 ## Directory Strcutre
 git-hooks-manager/<br/>
│── install.sh<br/>        
│── hooks_manager.cpp<br/>  
│── scripts/<br/>
│   ├── enable_hook.sh<br/>
│   ├── disable_hook.sh<br/> 
│   ├── list_hooks.sh<br/>  
│   ├── log_hooks.sh<br/>  
│── hooks/<br/>
│   ├── pre-commit<br/>    
│   ├── pre-push<br/>     
│   ├── post-merge<br/>     
│── github/<br/>
│   ├── enforce_hooks.yml<br/>

# How to run this project 


