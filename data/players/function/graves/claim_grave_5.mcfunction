scoreboard players set @s player_grave 5
data merge storage players:graves { claimed: { 5: true } }
$summon minecraft:text_display 166.5 95.125 -36.25 { \
    Tags: [ "grave_5", "graves" ], \
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
