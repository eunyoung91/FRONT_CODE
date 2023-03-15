;(function($) { 
    $.fn.tactile = function(swipe) {
      return this.each(function() {
        var $this = $(document),
        isTouching = false,
        debut;                                // means start in french
  
        $this.on('touchstart', debutGeste);       
  
        function debutGeste() {               // means start of gesture
          if (event.touches.length == 1) {
            debut = event.touches[0].pageY;
            isTouching = true;
            $this.on('touchmove', geste);
          }
        }
  
        function finGeste() {                 // means end of gesture
          $this.off('touchmove');
          isTouching = false;
          debut = null;
        } 
  
        function geste() {                   // geste means gesture
          if(isTouching) {
            var actuel = event.touches[0].pageY,
            delta = debut - actuel;
  
            if (Math.abs(delta) >= 30) {     // this '30' is the length of the swipe
              if (delta > 0) {
                swipe.up();
              } else {
                swipe.down();
              }                       
              finGeste();
            }
          }
          document.addEventListener('touchstart', function(){}, {passive: false});
          //event.preventDefault(); 
        }
      });
    };
  })(jQuery);