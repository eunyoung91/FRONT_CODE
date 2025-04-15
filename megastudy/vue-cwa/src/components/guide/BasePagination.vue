
<template>
  <ul class="BasePagination">
    <li :class="{ disabled: !hasPreviousPageSet }">
      <a v-if="hasPreviousPageSet" href="#" @click.prevent="changePage(previousPageSetEnd)">
        &lt; 이전
      </a>
      <span v-else>&lt; 이전</span>
    </li>

    <li v-for="pageNum in pageNumbers" :key="pageNum" :class="{ active: pageNum === currentPage }">
      <a v-if="pageNum !== currentPage" href="#" @click.prevent="changePage(pageNum)">
        {{ pageNum }}
      </a>
      <span v-else class="current">{{ pageNum }}</span>
    </li>

    <li :class="{ disabled: !hasNextPageSet }">
      <a v-if="hasNextPageSet" href="#" @click.prevent="changePage(nextPageSetStart)">
        다음 &gt;
      </a>
      <span v-else>다음 &gt;</span>
    </li>
  </ul>
</template>

<script>
export default {
  name: "BasePagination",
  props: {
    currentPage: Number,
    pageNumbers: Array,
    hasPreviousPageSet: Boolean,
    hasNextPageSet: Boolean,
    previousPageSetEnd: Number,
    nextPageSetStart: Number,
  },
  methods: {
    changePage(pageNumber) {
      this.$emit("page-changed", pageNumber);
    },
  },
};
</script>

