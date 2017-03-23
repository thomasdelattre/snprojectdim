



<!-- Footer -->
                <footer id="footer">
                    <div>
                        <span>Copyright © snprojectdim 2017</span>
                    </div>
                </footer>

                <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
                <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md navbar-fixed-bottom">
                    <a class="btn btn-primary" href="#page-top">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
                <div class="site-cache" id="site-cache"><span></span></div>
            </div>
        </div>
    </section>

    <script type="text/javascript">
        (function($){
            $('#site-cache').click(function(e){
                e.preventDefault();   
                $('body').removeClass('with--sidebar');
            });
        })(jQuery);
    </script>

    <script type="text/javascript">
        (function($){
            $('#bouton-hamburger').click(function(e){
                e.preventDefault();
                $('body').toggleClass('with--sidebar');
            });
        })(jQuery);
    </script>


    <script type="text/javascript">
        var options = [];

        $( '.dropdown-menu a' ).on( 'click', function( event ) {

           var $target = $( event.currentTarget ),
               val = $target.attr( 'data-value' ),
               $inp = $target.find( 'input' ),
               idx;

           if ( ( idx = options.indexOf( val ) ) > -1 ) {
              options.splice( idx, 1 );
              setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
           } else {
              options.push( val );
              setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
           }

           $( event.target ).blur();

           console.log( options );
           return false;
        });
    </script>
</body>

</html>
