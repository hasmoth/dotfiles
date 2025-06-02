all:
    stow --verbose --target=$$HOME --restow */  # Stows all packages
delete:
    stow --verbose --target=$$HOME --delete */  # Deletes all packages
