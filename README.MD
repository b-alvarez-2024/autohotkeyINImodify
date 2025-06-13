# 🔧 UpdateFirefoxVersion.ahk

This AutoHotkey script allows you to easily update the version values (`Version`, `MinVersion`, and `MaxVersion`) in the `application.ini` file of Mozilla Firefox. It is useful in environments where manually changing the browser’s reported version is required, such as for testing, development, or bypassing version-based restrictions.

## ⚠️ Warning

This script modifies a system file used by Firefox. Use it at your own risk and only if you fully understand what you're doing. It is not intended for general use and is not endorsed by Mozilla.

## 📂 File Path

By default, the script targets:  
C:\Program Files\Mozilla Firefox\browser\application.ini

Make sure you have write permissions on that file, or run the script as administrator.

## 🧰 Requirements

- Operating System: Windows 10  
- AutoHotkey v1 installed (compatible with v1.1+)  
- Administrator rights (required to modify files in Program Files)

## 🚀 How to Use

1. Run the script using AutoHotkey.  
2. An input box will appear.  
3. Enter the new Firefox version (e.g., 139.0.4).  
4. The script will read the `application.ini` file, replace the version lines, and overwrite it.  
5. If successful, you’ll get a confirmation message.

## 🔍 What Does It Modify?

Example: the script replaces the following lines inside `application.ini`:

Version=139.0.1  
MinVersion=139.0.1  
MaxVersion=139.0.1

If you enter the new version `139.0.4`, the file will be changed to:

Version=139.0.4  
MinVersion=139.0.4  
MaxVersion=139.0.4

## 🛠 Script Workflow

The script follows these steps:  
1. Prompts the user for the new version.  
2. Reads the `application.ini` file.  
3. Replaces the version lines using regular expressions.  
4. Deletes the original file and writes the updated content.

## 📌 Notes

- If the file cannot be read or written, you’ll get an error message.  
- If the input is cancelled, the script exits without doing anything.

## 📄 License

This script is distributed under the MIT License: https://opensource.org/licenses/MIT

## 🙃 Disclaimer

No warranty is provided. Editing Firefox system files may break functionality, invalidate settings, or prevent automatic updates. Use it only if you understand the consequences.

## ✍ Author

Script created by b-alvarez-2024.
