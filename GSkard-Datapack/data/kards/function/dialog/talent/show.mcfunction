#default
data modify storage kards dialog set value {\
    _:{\
        "type": "minecraft:multi_action",\
        "title":[],\
        "body":[],\
        "actions":[],\
        "columns":3,\
        "pause":false,\
        "after_action":"close",\
        "can_close_with_escape":false\
    }\
}

# title
function kards:dialog/talent/show/title

# body
function kards:dialog/talent/show/body

# actions
function kards:dialog/talent/show/actions

#
function kards:dialog/talent/show/_ with storage kards dialog
