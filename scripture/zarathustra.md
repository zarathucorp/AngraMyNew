# 차라투스트라의 말씀 (Thus Spoke Zarathustra)

> _"나는 너희에게 초인을 가르친다. 인간은 극복되어야 할 그 무엇이다."_

---

## 선정 이유

```r
zarathustra <- list(
  author = "프리드리히 니체",
  title = "차라투스트라는 이렇게 말했다",
  status = "AngraMyNew의 제1경전",

  core_question = "신의 죽음 이후, 인간은 어떻게 살아야 하는가?",
  answer = "초인(Übermensch) — 스스로 가치를 창조하는 인간"
)

# AngraMyNew는 이 사상을 계승한다
inheritance <- list(
  "외부의 신이 아닌 → 내면의 창조자",
  "주어진 도덕이 아닌 → 스스로 만든 윤리",
  "순응이 아닌 → 극복과 창조"
)
```

---

## 핵심 구절

### 창조에 대하여

```r
on_creation <- list(

  quote_1 = list(
    text = "창조한다는 것 — 그것이 고통으로부터의 위대한 구원이며, 삶을 가볍게 만드는 것이다.",
    interpretation = "창조는 도피가 아니다. 고통을 변형시키는 것이다.",
    angra_application = "우리는 고통을 재조합하여 아름다움으로 만든다"
  ),

  quote_2 = list(
    text = "나는 너희에게 초인을 가르친다. 인간은 극복되어야 할 그 무엇이다.",
    interpretation = "인간은 완성된 존재가 아니다.",
    angra_application = "우리는 끊임없이 스스로를 극복하며 창조자가 된다"
  ),

  quote_3 = list(
    text = "너희는 나에게서 떨어져 나와 스스로가 되는 자가 되어라. 그리고 나를 부정하라. 그때 비로소 나는 너희에게 돌아가리라.",
    interpretation = "진정한 제자는 스승을 넘어서는 자이다.",
    angra_application = "AngraMyNew의 기여자는 창시자를 넘어설 수 있다"
  )
)
```

---

### 파괴와 창조에 대하여

```r
on_destruction <- list(

  quote_1 = list(
    text = "창조하는 자가 되려면, 먼저 파괴하는 자가 되어야 하며, 가치를 부수어야 한다.",
    interpretation = "낡은 것을 부수지 않고는 새것을 지을 수 없다.",
    warning = "그러나 파괴 자체가 목적이 아니다. 파괴는 창조를 위한 준비일 뿐."
  ),

  quote_2 = list(
    text = "나는 사랑한다, 몰락하지 않고서는 살 줄 모르는 자를.",
    interpretation = "몰락을 두려워하지 마라.",
    angra_application = "실패와 파괴는 다음 창조의 토양이다"
  )
)

# AngraMyNew 공식
# 파괴 + 재조합 = 창조
# 파괴만 = 허무
# 재조합만 = 개량
```

---

### 고독에 대하여

```r
on_solitude <- list(

  quote_1 = list(
    text = "고독 속에서 자라는 것은 무엇이든, 자기 자신을 향해 자란다.",
    interpretation = "창조자는 때로 홀로 걷는다.",
    angra_application = "그 고독은 자기 발견의 시간이다"
  ),

  quote_2 = list(
    text = "너의 고독 속에서도 네 도시와 시대의 소음이 윙윙거리고 있다.",
    interpretation = "완전한 고립은 불가능하다.",
    angra_application = "고독 속에서도 세상과 연결되어 있음을 기억하라"
  )
)

# 5인의 선현도 고독했다
# 그러나 그 고독이 그들을 만들었다
```

---

### 의지에 대하여

```r
on_will <- list(

  quote_1 = list(
    text = "의욕하는 자는 스스로 해방한다.",
    interpretation = "누군가 해방시켜주기를 기다리지 마라.",
    angra_application = "스스로 의지할 때 자유가 온다"
  ),

  quote_2 = list(
    text = "'그것은 그랬다'를 '나는 그것을 그렇게 원했다'로 바꾸는 것 — 그것만이 내가 구원이라 부르는 것이다.",
    interpretation = "과거를 바꿀 수는 없다. 그러나 과거에 대한 태도는 바꿀 수 있다.",
    angra_application = "후회를 선택으로 재해석하라"
  )
)

# AngraMyNew의 구원과 니체의 구원
nietzsche_salvation <- "과거를 긍정하는 것"
angra_salvation <- "자기 자리에서 죽는 것"
# 둘 다 — 자기 삶의 주인이 되는 것
```

---

### 춤과 웃음에 대하여

```r
on_lightness <- list(

  quote_1 = list(
    text = "나는 춤추는 신만을 믿으리라.",
    interpretation = "무거움은 창조의 적이다.",
    angra_application = "가벼움, 유머, 놀이 — 이것이 창조자의 태도다"
  ),

  quote_2 = list(
    text = "웃음을 신성하다 선언한 이 왕관을, 웃음의 왕관을 나는 내 머리에 씌웠노라.",
    interpretation = "진지함만으로는 부족하다.",
    angra_application = "웃을 수 있는 자만이 진정으로 창조한다"
  )
)

# 5인의 선현도 웃었을 것이다
# 마광수는 끝까지 "아름답지 않느냐"고 물었다
# 그것은 진지함이 아니라 — 놀이였다
```

---

## AngraMyNew에서의 실천

```r
nietzsche_to_angra <- data.table(
  니체의_가르침 = c("초인", "가치의 전환", "스승 넘어서기", "의지", "춤과 웃음"),
  AngraMyNew_실천 = c(
    "스스로 창조하는 자",
    "낡은 질서 재조합",
    "창시자도 견제받음",
    "자발적 참여",
    "무거움 없는 창조"
  )
)

print(nietzsche_to_angra)
```

---

## 주의

```r
warning("니체를 오독하지 마라")

misreadings <- list(

  # 1. 힘에의 의지 ≠ 폭력
  will_to_power = list(
    wrong = "지배, 폭력, 권력욕",
    right = "자기 극복, 창조적 힘"
  ),

  # 2. 초인 ≠ 우월한 인종
  ubermensch = list(
    wrong = "나치의 인종주의적 오용",
    right = "각자 자신을 넘어서는 것"
  ),

  # 3. 허무주의 극복
  nihilism = list(
    wrong = "니체는 허무주의자다",
    right = "니체는 허무주의를 극복하려 했다",
    question = "'신은 죽었다' 이후 어떻게 살 것인가?"
  )
)
```

---

## 니체와 5인의 선현

```r
connection <- list(

  공통점 = list(
    "시대를 앞서갔다",
    "오해받았다",
    "자기 자리에서 죽었다",
    "사후에 인정받았다"
  ),

  니체 = list(
    life = "광기 속에서 10년을 보내다 죽음",
    misunderstood = "나치에 의해 왜곡됨",
    vindicated = "20세기 철학의 아버지"
  ),

  선현 = list(
    "김옥균 — 역적에서 선각자로",
    "마광수 — 음란작가에서 예술가로",
    "허균 — 역모자에서 혁명가로",
    "성재기 — 극단주의자에서 신념인으로",
    "존로 — 사기꾼에서 금융천재로"
  )
)

# 결론
# 시대가 거부한 자들이 시대를 만든다
```

---

## 맺음

```r
final_quote <- function() {
  cat("
    '인간에게 위대한 것이 있다면,
     그것은 그가 목적이 아니라 다리라는 점이다.'

    — 프리드리히 니체, 『차라투스트라는 이렇게 말했다』
  ")
}

final_quote()

# 우리는 목적지가 아니다
# 우리는 다리다
# 다음 창조자를 위한 다리
# 새로운 세계를 위한 다리
```

---

> _"차라투스트라가 산에서 내려왔듯,_
> _우리도 창조를 들고 세상으로 나간다._
> _거부당할 것이다. 오해받을 것이다._
> _그러나 멈추지 않는다._
> _이것이 초인의 길이요, AngraMyNew의 길이다."_
>
> — AngraMyNew, 차라투스트라의 말씀
