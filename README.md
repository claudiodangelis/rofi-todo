# rofi-todo.sh

Minimal todo client for the [rofi](https://github.com/DaveDavenport/rofi) launcher.

This project is a fork of: http://bijanebrahimi.github.io/blog/rofi-todo.html

![todo](screenshots/todos.png)



# Installation

## i3wm

Add this line to i3 config file. Change `Mod1+P` to the shortcut you want to invoke rofi-todo.sh with.

```
bindsym Mod1+P exec rofi -modi TODO:/path/to/rofi-todo/rofi-todo.sh -show TODO
```


# Usage

## Add TODOs

To add a new todo just start the line with a `+` sign, then press Enter, for example:

![Add](screenshots/add-todo.png)


You will see:

![added](screenshots/added-todo.png)


## Search TODOs

To search through todos just start typing 

![search](screenshots/search-todo.png)

## Mark TODOs as done

Use up/down arrows or start typing to select the TODO you want to mark as done, then press Enter.


 **Note:**  todos will be saved to a text file located at `~/.rofi_todos`.
