#!/bin/bash
TODO_FILE=~/.rofi_todos

if [[ ! -a "${TODO_FILE}" ]]; then
    touch "${TODO_FILE}"
fi

function list_todos() {
    echo "$(cat "${TODO_FILE}")"
}

if [ -z "$@" ]; then
    list_todos
else
    LINE=$(echo "${@}" | sed "s/\([^a-zA-Z0-9]\)/\\\\\\1/g")
    LINE_UNESCAPED=${@}
    if [[ $LINE_UNESCAPED == +* ]]; then
        LINE_UNESCAPED=$(echo $LINE_UNESCAPED | sed s/^+//g |sed s/^\s+//g )
        echo -e "`date +"%B %d %H:%M"` ${LINE_UNESCAPED}" >> "${TODO_FILE}"
    else
        MATCHING=$(grep "^${LINE_UNESCAPED}$" "${TODO_FILE}")
        if [[ -n "${MATCHING}" ]]; then
            sed -i "/^${LINE_UNESCAPED}$/d" "${TODO_FILE}"
        fi
    fi
    list_todos
fi
