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
    }\
}

# title
function kards:dialog/show/title

# body
function kards:dialog/show/body

# actions
function kards:dialog/show/actions

#
function kards:dialog/show/_ with storage kards dialog
