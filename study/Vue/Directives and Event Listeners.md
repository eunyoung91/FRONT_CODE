# Vue.js Directives and Event Listeners

## 1. `v-show` + `v-if`
- `v-show`는 조건에 따라 `display: none;`으로 요소를 숨기지만 DOM에서 항상 존재합니다.
- `v-if`는 조건이 참일 때만 DOM에 요소를 추가하고, 조건이 바뀌면 요소를 DOM에서 제거하고 다시 추가합니다.

```html
<div v-show="isVisible">이 요소는 isVisible이 true일 때만 보입니다.</div>
<div v-if="isVisible">이 요소는 isVisible이 true일 때만 DOM에 존재합니다.</div>
```

## 2. `@click` + `v-bind`
- `@click`은 클릭 이벤트를 처리하고, `v-bind`는 동적으로 속성을 변경하는 데 사용됩니다. 예를 들어 버튼 클릭 시 URL을 동적으로 변경하거나 다른 속성을 수정할 수 있습니다.

```html
<button @click="openPopup" :disabled="isDisabled">열기</button>
```

## 3. `v-for` + `:key`
- `v-for`는 배열이나 객체를 반복하여 렌더링하는 데 사용되고, `:key`는 각 항목을 고유하게 식별하여 Vue가 효율적으로 렌더링할 수 있도록 도와줍니다.

```html
<ul>
  <li v-for="(teacher, index) in teachers" :key="teacher.id">{{ teacher.name }}</li>
</ul>
```

## 4. `v-if` + `v-else`
- `v-if`와 `v-else`는 조건에 따라 다른 요소를 렌더링합니다. `v-if`가 `true`일 때 하나의 요소를, 그렇지 않으면 `v-else`에 해당하는 다른 요소를 렌더링합니다.

```html
<div v-if="isLoggedIn">로그인되었습니다!</div>
<div v-else>로그인이 필요합니다.</div>
```

## 5. `:class` + `:style`
- `:class`와 `:style`을 함께 사용하여 요소에 동적으로 클래스와 스타일을 적용할 수 있습니다. `:class`는 클래스 이름을 동적으로 변경하고, `:style`은 인라인 스타일을 동적으로 바인딩합니다.

```html
<div :class="{'active': isActive}" :style="{ color: textColor }">
  스타일과 클래스를 동적으로 변경할 수 있습니다.
</div>
```

## 6. `v-model` + `v-bind`
- `v-model`은 양방향 데이터 바인딩을 처리하는 데 사용됩니다. `v-bind`는 특정 속성을 동적으로 바인딩합니다. 두 가지를 결합하여 데이터와 UI 간의 상호작용을 강화할 수 있습니다.

```html
<input v-model="inputValue" :placeholder="placeholderText">
```

## 7. `v-show` + `v-bind:class`
- `v-show`와 `v-bind`를 함께 사용하여 요소의 표시 여부와 스타일을 동시에 제어할 수 있습니다. 특정 조건에 따라 클래스가 변경되며 요소가 표시될 수 있습니다.

```html
<div v-show="isVisible" :class="{ 'highlight': isHighlighted }">
  이 요소는 isVisible이 true일 때만 보이며, isHighlighted가 true일 때 'highlight' 클래스가 적용됩니다.
</div>
```

## 8. `v-for` + `v-if`
- `v-for`와 `v-if`를 함께 사용하여 리스트를 렌더링하면서, 조건에 따라 특정 항목만 표시할 수 있습니다. 성능 문제로 `v-for` 외부에서 조건을 처리하는 것이 더 바람직합니다.

```html
<ul>
  <li v-for="item in items" v-if="item.isActive" :key="item.id">{{ item.name }}</li>
</ul>
```

## 9. `v-bind` + `:src`
- `v-bind`를 사용하여 이미지의 `src` 속성을 동적으로 설정할 수 있습니다.

```html
<img :src="imageUrl" alt="동적 이미지">
```

## 10. `@click` + `v-show`
- 버튼 클릭 이벤트와 `v-show`를 결합하여 사용자가 버튼을 클릭할 때 해당 요소를 표시하거나 숨길 수 있습니다.

```html
<button @click="isVisible = !isVisible">토글</button>
<div v-show="isVisible">이 요소는 토글 버튼을 클릭하면 보이거나 숨겨집니다.</div>
```
