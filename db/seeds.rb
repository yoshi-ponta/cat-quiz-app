Quiz.create!(
  question: "Q1.何と言っているでしょう？",
  choices: ["遊ぼう", "ごはんちょうだい", "抱っこして", "撫でて"].to_json,
  correct_answer: "ごはんちょうだい",
  explanation: "ごはんが欲しいときの合図です。一日中、至近距離でご飯をねだるので、エサの与え過ぎには気を付けましょう。",
  audio_file: "audio_2025_07_05_12_50_58.mp3"
)

Quiz.create!(
  question: "Q2.何と言っているでしょう？",
  choices: ["怖い", "捕まえてやる", "やめて", "苦しい"].to_json,
  correct_answer: "捕まえてやる",
  explanation: "クラッキング音と呼ばれる、猫が興奮している時の鳴き声です。ぽんちゃんの場合は小動物を見つけたときに鳴きます。捕まえる気満々です。",
  audio_file: "audio_2025_07_05_13_04_33.mp3"
)

Quiz.create!(
  question: "Q3.何と言っているでしょう？",
  choices: ["このやろう", "さみしい", "大好き", "遊びたい"].to_json,
  correct_answer: "このやろう",
  explanation: "怒っているときの合図です。その場から離れないと確実に猫パンチが飛んできます。",
  audio_file: "audio_2025_07_05_12_57_40.mp3"
)

Quiz.create!(
  question: "Q4.何と言っているでしょう？",
  choices: ["遊ぼ！", "眠い", "だるい", "撫でて"].to_json,
  correct_answer: "撫でて",
  explanation: "甘えているときの合図です。いっぱい撫でてあげましょう！撫で方が気に入らないと、キレます。",
  audio_file: "audio_pon_Being spoiled.mp3"
)

Quiz.create!(
  question: "Q5.何と言っているでしょう？",
  choices: ["びっくりした", "あなかすいた", "離れないで", "一緒に遊んで"].to_json,
  correct_answer: "離れないで",
  explanation: "近くにいてほしいときの合図です。ぽんちゃんは寂しがり屋なので、この合図があったらギュッと抱きしめてあげましょう。",
  audio_file: "audio_2025_07_05_14_54_47.mp3"
)
