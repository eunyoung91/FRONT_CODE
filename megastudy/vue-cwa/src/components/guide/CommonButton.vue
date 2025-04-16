
<template>
    <button
        :type="type"
        :class="['btn', variantClass, sizeClass, customClass, { 'is-active': isActive }]"
        @click="handleClick"
        :disabled="disabled"
    >
        <template v-if="iconPosition === 'left'">
            <slot name="icon" />
        </template>

        <slot />

        <template v-if="iconPosition === 'right'">
            <slot name="icon" />
        </template>
    </button>
</template>

<script>
    export default {
        name: 'CommonButton',
        props: {
            type: {
                type: String,
                default: 'button'
            },
            variant: {
                type: String,
                default: 'primary' // primary, secondary, danger, outline
            },
            size: {
                type: String,
                default: 'medium' // small, medium, large
            },
            customClass: {
                type: String,
                default: ''
            },
            disabled: {
                type: Boolean,
                default: false
            },
            iconPosition: {
                type: String,
                default: 'left',
                validator: value => ['left', 'right'].includes(value)
            },
            toggleActive: {
                type: Boolean,
                default: true
            },
        },
        data() {
            return {
                isActive: false,
            };
        },
        computed: {
            variantClass() {
                return `btn-${this.variant}`;
            },
            sizeClass() {
                return `btn-size-${this.size}`;
            }
        },
        methods: {
            handleClick(event) {
                if (this.toggleActive) {
                    this.isActive = !this.isActive;
                }
                this.$emit('click', event);
            }
        }
    };
</script>
