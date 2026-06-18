scoreboard players set @s player_grave 4
data merge storage players:graves { claimed: { 4: true } }
$summon minecraft:text_display 168.5 95.625 -36.25 { \
    Tags: [ "grave_4", "graves" ], \
    alignment: "center", \
    transformation: { \
        left_rotation: [0f, 0f, 0f, 1f], \
        right_rotation: [0f, 0f, 0f, 1f], \
        translation: [0f, 0f, 0f], \
        scale: [1f, 1f, 1f] \
    }, \
    text: '{ \
        "selector": "@a[scores={Player=-$(player)}]", \
        "color": "red", \
        "extra": [{ \
            "text": "\\n$(reason)", \
            "color": "gold" \
        }] \
    }' \
}

data remove storage players:graves reason
data remove storage players:graves player_username
