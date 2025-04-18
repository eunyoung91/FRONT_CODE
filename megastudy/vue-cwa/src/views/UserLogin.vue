<!-- 
✍️ 테스트용 계정 정보
아이디: admin
비밀번호: 1234
인증번호: 654321 
-->
<template>
    <div class="admin-container">
        <div class="admin-content login">
            <div class="main-header">
                <div class="header-noti"><p><strong>DEV-ADMIN 개발 서버 입니다.</strong></p></div>
            </div>

            <div class="login-content">
                <div class="login-logo">
                    <img src="https://campus.megastudy.net/admin/image/admin_logo.png">
                </div>

                <div class="login-form">
                    <img src="https://campus.megastudy.net/admin/image/intro_tit.png" alt="메가스터디학원 관리자 사이트 입니다.">

                    <div class="login-main">
                        <div class="login-box">
                            <div>
                                <div>
                                    <strong>아이디</strong>
                                    <input name="userid" id="userid" type="text" v-model="loginForm.userid">
                                </div>
                                <div>
                                    <strong>비밀번호</strong>
                                    <input name="passwd" id="passwd" type="password" v-model="loginForm.passwd" @keydown.enter="checkLogin">
                                </div>
                            </div>
                            <div>
                                <CommonButton variant="secondary" @click.prevent="checkLogin">LOGIN</CommonButton>
                            </div>
                        </div>

                        <div class="login-save">
                            <div>
                                <input type="checkbox" name="SAVEID" id="checkbox" v-model="rememberId">
                            </div>
                            <div><b style="color:#3357a4;">ID 저장</b> [접속자 IP : {{ userIP }}]</div>
                        </div>

                        <!-- 인증번호 -->
                        <div class="login-etc" v-if="showVerificationForm">
                            <div>
                                <strong>인증번호</strong>
                                <div>
                                    <input type="text" name="admin_app" id="admin_app" maxlength="6"  v-model="verificationCode" @keydown.enter="submitCode">
                                </div>
                                <div>
                                    <CommonButton variant="secondary" @click.prevent="submitCode">인증</CommonButton>
                                </div>
                            </div>
                        </div>
                        <!-- // 인증번호 -->

                    </div>

                    <div class="login-noti">
                        <div>
                            <span>&bull;</span><b>로그인 관련 문의 :</b> 러셀학원사업본부 서비스기획팀
                            <div>
                                <a href="" class="link">[관리자 계정 신청 문서 다운로드]</a>
                            </div>
                        </div>
                        <div>
                            <span>&bull;</span>
                            <div>
                                <b>Tel :</b> 02-3489-8426  | <b>E-mail :</b> 최은영 ey123@megastudy.net
                            </div>
                        </div>
                        <div>
                            <img src="https://campus.megastudy.net/admin/image/copyright.png" width="357" height="10">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
import CommonButton from '@/components/guide/CommonButton.vue';

export default {
    components: {
        CommonButton,
    },
    data() {
        return {
            loginForm: {
                userid: '',
                passwd: '',
            },
            userIP: '',
            rememberId: false,
            showVerificationForm: false,
            verificationCode: '',
            correctVerificationCode: '', // mock 인증번호 저장용
        };
    },
    mounted() {
        // 예시용 mock
        this.userIP = '192.168.0.1'; // 실제로는 API 등을 통해 받아와야 함

        const storedId = localStorage.getItem('savedId');
        if (storedId) {
            this.loginForm.userid = storedId;
            this.rememberId = true;
        }
    },
    methods: {
        checkLogin() {
            if (!this.loginForm.userid) {
                alert('아이디를 입력하세요!');
                return;
            }
            if (!this.loginForm.passwd) {
                alert('비밀번호를 입력하세요!');
                return;
            }
            this.submitLoginForm();
        },
        submitLoginForm() {
            if (this.rememberId) {
                localStorage.setItem('savedId', this.loginForm.userid);
            } else {
                localStorage.removeItem('savedId');
            }

            // ✅ API 대체: 간단한 조건으로 mock 처리
            const { userid, passwd } = this.loginForm;

            // 간단한 mock 조건
            if (userid === 'admin' && passwd === '1234') {
                this.correctVerificationCode = '654321'; // mock 인증번호
                alert('인증번호가 발급되었습니다.');
                this.showVerificationForm = true;
                this.verificationCode = ''; // 초기화
            } else {
                alert('아이디 또는 비밀번호가 잘못되었습니다.');
            }
        },
        submitCode() {
            if (this.verificationCode === this.correctVerificationCode) {
                alert('로그인 성공!');
                this.$router.push('/guide');
            } else {
                alert('인증번호가 올바르지 않습니다.');
            }
        },
    },
};
</script>
