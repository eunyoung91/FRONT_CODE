$(document).ready(function() {
  // 과목 탭 전환
  $('.subject-btn').click(function() {
      $('.subject-btn').removeClass('active');
      $(this).addClass('active');
  });

  // 시험 데이터
  const examList = [
      { year: '2025', type: 'OMEGA', round: '6회', isNew: true },
      { year: '2025', type: 'OMEGA BLUE', round: '3회' },
      { year: '2025', type: 'OMEGA BLACK', round: '1회' },
      { year: '2025', type: 'OMEGA', round: '4회' },
      { year: '2025', type: 'OMEGA', round: '3회' }
  ];

  // 시험 목록 렌더링
  function renderExamList() {
      const examItems = $('.exam-items');
      examItems.empty();

      examList.forEach(exam => {
          const examItem = $(`
              <div class="exam-item">
                  <span>${exam.year}</span>
                  <span>${exam.type}</span>
                  <span>${exam.round}</span>
                  <button class="score-btn">
                      성적표 보기
                      ${exam.isNew ? '<span class="new-badge">NEW</span>' : ''}
                  </button>
              </div>
          `);
          examItems.append(examItem);
      });
  }

  // 초기 렌더링
  renderExamList();
});
