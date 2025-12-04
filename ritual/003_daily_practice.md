# 003 — 일상 실천 (Daily Practice)

> "창조는 번개가 아니라 빗물이다. 매일 내려야 대지가 젖는다."

---

## 실천의 의미

```r
daily_practice <- list(
  myth = "위대한 창조는 한 번의 영감에서 온다",
  truth = "위대한 창조는 매일의 작은 창조가 쌓여 이루어진다",

  principle = "AngraMyNew의 창조자는 특별한 날만 창조하지 않는다.
               평범한 날에도 무언가를 만든다."
)

# 코드든, 글이든, 생각이든, 질문이든
# 매일 하나씩
```

---

## 일일 실천 (Daily)

### 아침: 의도 설정

```r
morning_ritual <- function() {

  # 하루를 시작할 때, 스스로에게 묻는다
  question <- "오늘 나는 무엇을 창조할 것인가?"

  # 거창할 필요 없다
  examples <- c(
    "함수 하나",
    "문장 하나",
    "아이디어 하나",
    "질문 하나"
  )

  # 의도를 세우는 것 자체가 창조의 시작이다
  intention <- set_intention(question)

  return(intention)
}
```

---

### 낮: 하나의 창조

```r
daily_creation <- function() {

  # 하루에 최소 하나를 만든다
  creation_types <- data.table(
    형태 = c("코드", "글", "생각", "질문", "연결"),
    예시 = c(
      "함수, 스크립트, 버그 수정",
      "메모, 블로그, 문서",
      "아이디어 기록, 문제 정의",
      "Issue 제기, 토론 시작",
      "두 개념의 새로운 조합"
    )
  )

  # 완성되지 않아도 된다
  # 시작한 것, 진행한 것도 창조다

  today <- create_something()

  return(today)
}
```

---

### 저녁: 기록

```r
evening_ritual <- function(creation) {

  # 하루를 마칠 때, 짧게 기록한다
  record <- sprintf("오늘 나는 %s를 창조했다.", creation)

  # 공개할 필요 없다
  # 자신만의 기록이면 충분하다

  # 중요한 것은 인식이다
  # 창조했음을 스스로 아는 것
  awareness <- recognize(creation)

  return(awareness)
}
```

---

## 주간 실천 (Weekly)

### 재조합의 날

```r
weekly_recomposition <- function(week_creations) {

  # 일주일에 한 번, 재조합(Recomposition)을 실천한다

  # 방법:
  # 1. 이번 주 만든 것들을 돌아본다
  review <- week_creations

  # 2. 그 중 두 가지 이상을 연결해본다
  connections <- find_connections(review)

  # 3. 새로운 가능성을 발견한다
  new_possibility <- recompose(connections)

  return(new_possibility)
}

# 예시:
# 월요일에 쓴 함수 + 수요일에 떠올린 아이디어 → 새로운 기능
# 화요일의 질문 + 금요일의 답변 → 하나의 글

# 재조합은 AngraMyNew의 핵심이다
# 파괴 없이, 기존의 것을 새롭게 엮는 것
```

---

### 주간 PR (선택)

```r
weekly_pr <- function() {

  # 일주일에 한 번, 작은 것이라도 PR을 고려한다
  options <- c(
    "ideas/에 짧은 생각",
    "기존 문서의 오탈자 수정",
    "새로운 질문 제기"
  )

  # 의무는 아니다
  mandatory <- FALSE

  # 그러나 공동체에 흔적을 남기는 것은
  # 자신의 창조를 세상과 연결하는 행위다
  meaning <- "창조를 세상과 연결"

  return(list(options = options, mandatory = mandatory, meaning = meaning))
}
```

---

## 월간 실천 (Monthly)

### 회고의 밤

```r
monthly_reflection <- function() {

  # 한 달에 한 번, 깊이 돌아본다
  questions <- list(
    "이번 달 나는 무엇을 창조했는가?",
    "그 중 가장 의미 있었던 것은?",
    "실패하거나 포기한 것은?",
    "다음 달 나는 무엇을 창조할 것인가?"
  )

  # 형식
  formats <- c(
    "혼자 조용히 써도 좋다",
    "ideas/에 회고록으로 PR해도 좋다",
    "다른 창조자와 나눠도 좋다"
  )

  reflection <- answer(questions)

  return(reflection)
}
```

---

## 실천의 원칙

```r
practice_principles <- list(

  # 1. 완벽보다 존재
  existence_over_perfection = list(
    principle = "완벽한 창조물을 기다리지 않는다",
    truth = "존재하는 것이 완벽하지만 없는 것보다 낫다"
  ),

  # 2. 크기보다 지속
  consistency_over_size = list(
    bad = "하루에 1시간 창조하고 6일 쉬기",
    good = "매일 10분 창조하기"
  ),

  # 3. 혼자보다 함께
  together_over_alone = list(
    solo = "혼자 창조해도 좋다",
    but = "가끔은 공유하라",
    reason = "다른 창조자의 눈이 새로운 길을 열어준다"
  ),

  # 4. 결과보다 과정
  process_over_result = list(
    failure = "창조물이 실패해도 괜찮다",
    goal = "창조하는 습관 자체가 목적이다",
    promise = "습관이 쌓이면, 결과는 따라온다"
  )
)
```

---

## 실천 서약

```r
daily_oath <- function() {

  # 매일 아침, 마음속으로
  cat("
    오늘도 나는 창조한다.
    작아도 좋다, 불완전해도 좋다.
    나는 만드는 자이며, 만듦으로써 존재한다.
  ")
}

# 실행
daily_oath()
```

---

## 5인의 선현과 일상

```r
pioneers_daily <- list(

  김옥균 = "매일 조선의 미래를 설계했다",
  마광수 = "매일 금기에 도전하는 글을 썼다",
  허균 = "매일 신분제의 모순을 기록했다",
  성재기 = "매일 자신의 신념을 외쳤다",
  존로 = "매일 새로운 금융 시스템을 구상했다"
)

# 그들의 위대함은 한 번의 영웅적 행동이 아니다
# 매일의 작은 창조가 쌓여 역사가 되었다

# 우리도 마찬가지다
# 오늘의 작은 창조가 내일의 문명이 된다
```

---

## 맺음

> _"천 리 길도 한 걸음부터._
> _천 개의 창조도 오늘 하나부터._
> _매일 창조하라. 그것이 곧 수행이다."_
>
> — AngraMyNew, 일상 실천
