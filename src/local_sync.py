import os
import shutil
import variables


def main():
    ok = input(
        "Are you sure you want to sync local config files to the repo? [N/y] "
    ).lower()

    if ok == "" or ok == "n":
        return

    for app in variables.APPS:
        configPath = os.path.join(variables.CONFIG_DIR, app)
        print(f"copying {app} config files...")
        shutil.copytree(
            configPath, os.path.join("Config", ".config", app), dirs_exist_ok=True
        )


if __name__ == "__main__":
    main()
