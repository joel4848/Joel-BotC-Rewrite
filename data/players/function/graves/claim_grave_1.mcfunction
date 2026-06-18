scoreboard players set @s player_grave 1
data merge storage players:graves { claimed: { 1: true } }
$summon minecraft:text_display 179.25 95.125 -30.5 { \
    Tags: [ "grave_1", "graves" ], \
    alignment: "center", \
    transformation: { \
        left_rotation: [0f, -0.707f, 0f, 0.707f], \
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
