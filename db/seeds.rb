return if Quiz.exists?


Quiz.create!(
  question: "Q1.何と言っているでしょう？",
  choice1: "遊ぼう",
  choice2: "ごはんちょうだい",
  choice3: "抱っこして",
  choice4: "撫でて",
  correct_answer: "ごはんちょうだい",
  explanation: "ごはんが欲しいときの合図です。一日中、至近距離でご飯をねだるので、エサの与え過ぎには気を付けましょう。",
  audio_file: "audio_2025_07_05_12_50_58.mp3"
)

Quiz.create!(
  question: "Q2.何と言っているでしょう？",
  choice1: "怖い",
  choice2: "捕まえてやる",
  choice3: "やめて",
  choice4: "苦しい",
  correct_answer: "捕まえてやる",
  explanation: "クラッキング音と呼ばれる、猫が興奮している時の鳴き声です。ぽんちゃんの場合は小動物を見つけたときに鳴きます。捕まえる気満々です。",
  audio_file: "audio_2025_07_05_13_04_33.mp3"
)

Quiz.create!(
  question: "Q3.何と言っているでしょう？",
  choice1: "このやろう",
  choice2: "さみしい",
  choice3: "大好き",
  choice4: "遊びたい",
  correct_answer: "このやろう",
  explanation: "怒っているときの合図です。その場から離れないと確実に猫パンチが飛んできます。",
  audio_file: "audio_2025_07_05_12_57_40.mp3"
)

Quiz.create!(
  question: "Q4.何と言っているでしょう？",
  choice1: "遊ぼ！",
  choice2: "眠い",
  choice3: "だるい",
  choice4: "撫でて",
  correct_answer: "撫でて",
  explanation: "甘えているときの合図です。いっぱい撫でてあげましょう！撫で方が気に入らないと、キレます。",
  audio_file: "audio_pon_Being spoiled.mp3"
)

 Quiz.create!(
  question: "Q5.何と言っているでしょう？",
  choice1: "びっくりした",
  choice2: "あなかすいた",
  choice3: "離れないで",
  choice4: "一緒に遊んで",
  correct_answer: "離れないで",
  explanation: "近くにいてほしいときの合図です。ぽんちゃんは寂しがり屋なので、この合図があったらギュッと抱きしめてあげましょう。",
  audio_file: "audio_2025_07_05_14_54_47.mp3"
)
