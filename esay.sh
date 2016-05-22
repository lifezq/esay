#!/bin/bash

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)  
    echo $(($num%$max+$min))  
}  
  
mailto='user@localhost'

nights=("Every day, a greeting, a love you, a good night, this is all my greed." "Hearing you say good night to me every night is the si-mp-lest and the most lasting happinei have." "Good night, sleep tight！" "Maybe only the night a warm quilt and a good dream, can comfort every day there are so many unhappy things we." "Every night before going to bed to listen to you say good night, belongs to me, the most si-mp-le and lasting happiness." "You've got to get up every morning with determination if you're going to go to bed with satisfaction. " "The warmest words in the world-good night." "Lover is the one who would rather bear your complaints thousands of time than take a blame from others" "Memories can make you smile, but it can very well make you cry hard.")

#mornings=("It's time to wake up, if you don't get up, will be late oh ~" "Perhaps happiness is waking up every morning with your sun, life can be no splendor, but not without a warm breeze; life can not skyrocket, but can not not happy watch indifferent time." "Open your eyes in the morning, will think, this is a start, everything will be better in the future, this is the beginning of all happiness. Now I understand. In fact, that is happiness." "To get up every morning, they say, the world is very good, very strong. Believe that you are a brave man." "No matter how tired the day before, or fingers are broken, I wake up in the morning to see the flowers, but also a happy day." "Every morning in the mirror, remember to smile, and said to myself, I am very cute. To exercise more, to be healthy, not lazy." "Get up in the morning and tell yourself: hard to stick. Again good also indifferent to. And the difference will be confident. More will save. Then the cold will be enthusiastic. " "Some praised youth said: youth is the morning sun, she was radiant, brilliant and dazzling, all the gloomy and dark have been her eviction, is thriving vitality is not devoid of hope, is indomitable courage, is life's most brilliant colors. " "No matter how experienced you last night choke with sobs woke up in the morning and the city is still heavy traffic on the street. " "The fresh air in the morning, the bird's crisp cry, will give you a beautiful mood. " "How I wish: a clean in the morning, the sun on the grass, dew on the grass is shining, we leaning on the door stand shoulder to shoulder." "When you boot in the morning, you can see me your blessing, and a hearts of roses, day to bring you luck")
nl=${#nights[@]}

i=$(rand 0 $nl-1)

echo -e -n "Hi,\n        "${nights[$i]}"\n\n        Yours,\n        User\n\n  ----------------------------\n        \n" | mail -s "This is a test" $mailto >/dev/null &


