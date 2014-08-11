

  $.Isotope.prototype._getCenteredMasonryColumns = function() {
    this.width = this.element.width();
    
    var parentWidth = this.element.parent().width();
    
                  // i.e. options.masonry && options.masonry.columnWidth
    var colW = this.options.masonry && this.options.masonry.columnWidth ||
                  // or use the size of the first item
                  this.$filteredAtoms.outerWidth(true) ||
                  // if there's no items, use size of container
                  parentWidth;
    
    var cols = Math.floor( parentWidth / colW );
    cols = Math.max( cols, 1 );

    // i.e. this.masonry.cols = ....
    this.masonry.cols = cols;
    // i.e. this.masonry.columnWidth = ...
    this.masonry.columnWidth = colW;
  };
  
  $.Isotope.prototype._masonryReset = function() {
    // layout-specific props
    this.masonry = {};
    // FIXME shouldn't have to call this again
    this._getCenteredMasonryColumns();
    var i = this.masonry.cols;
    this.masonry.colYs = [];
    while (i--) {
      this.masonry.colYs.push( 0 );
    }
  };

  $.Isotope.prototype._masonryResizeChanged = function() {
    var prevColCount = this.masonry.cols;
    // get updated colCount
    this._getCenteredMasonryColumns();
    return ( this.masonry.cols !== prevColCount );
  };
  
  $.Isotope.prototype._masonryGetContainerSize = function() {
    var unusedCols = 0,
        i = this.masonry.cols;
    // count unused columns
    while ( --i ) {
      if ( this.masonry.colYs[i] !== 0 ) {
        break;
      }
      unusedCols++;
    }
    
    return {
          height : Math.max.apply( Math, this.masonry.colYs ),
          // fit container to columns that have been used;
          width : (this.masonry.cols - unusedCols) * this.masonry.columnWidth
        };
  };


  $(function(){
    
    var $container = $('#container');
    
    
      // add randomish size classes
      // $container.find('.element').each(function(){
      //   var $this = $(this),
      //       number = parseInt( $this.find('.number').text(), 10 );
      //   if ( number % 7 % 2 === 1 ) {
      //     $this.addClass('width2');
      //   }
      //   if ( number % 3 === 0 ) {
      //     $this.addClass('height2');
      //   }
      // });
    
    $container.isotope({
      itemSelector : '.element',
      masonry : {
        columnWidth : 120
      }
      // getSortData : {
      //   symbol : function( $elem ) {
      //     return $elem.attr('data-symbol');
      //   },
      //   category : function( $elem ) {
      //     return $elem.attr('data-category');
      //   },
      //   number : function( $elem ) {
      //     return parseInt( $elem.find('.number').text(), 10 );
      //   },
      //   weight : function( $elem ) {
      //     return parseFloat( $elem.find('.weight').text().replace( /[\(\)]/g, '') );
      //   },
      //   name : function ( $elem ) {
      //     return $elem.find('.name').text();
      //   }
      // }
    });
      
    
      // var $optionSets = $('#options .option-set'),
      //     $optionLinks = $optionSets.find('a');

      // $optionLinks.click(function(){
      //   var $this = $(this);
      //   // don't proceed if already selected
      //   if ( $this.hasClass('selected') ) {
      //     return false;
      //   }
      //   var $optionSet = $this.parents('.option-set');
      //   $optionSet.find('.selected').removeClass('selected');
      //   $this.addClass('selected');
  
      //   // make option object dynamically, i.e. { filter: '.my-filter-class' }
      //   var options = {},
      //       key = $optionSet.attr('data-option-key'),
      //       value = $this.attr('data-option-value');
      //   // parse 'false' as false boolean
      //   value = value === 'false' ? false : value;
      //   options[ key ] = value;
      //   if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
      //     // changes in layout modes need extra logic
      //     changeLayoutMode( $this, options )
      //   } else {
      //     // otherwise, apply new options
      //     $container.isotope( options );
      //   }
        
      //   return false;
      // });


    
      // $('#insert a').click(function(){
      //   var $newEls = $( fakeElement.getGroup() );
      //   $container.isotope( 'insert', $newEls );

      //   return false;
      // });

      // $('#append a').click(function(){
      //   var $newEls = $( fakeElement.getGroup() );
      //   $container.append( $newEls ).isotope( 'appended', $newEls );

      //   return false;
      // });


    
      // change size of clicked element
      // $container.delegate( '.element', 'click', function(){
      //   $(this).toggleClass('large');
      //   $container.isotope('reLayout');
      // });

      // // toggle variable sizes of all elements
      // $('#toggle-sizes').find('a').click(function(){
      //   $container
      //     .toggleClass('variable-sizes')
      //     .isotope('reLayout');
      //   return false;
      // });


    // var $sortBy = $('#sort-by');
    $('#everything').click(function(){
      $container.isotope('shuffle');
      
      // $sortBy.find('.selected').removeClass('selected');
      // $sortBy.find('[data-option-value="random"]').addClass('selected');
      return false;
    });
    
  });


/* =========================================================
****************************Isotope*************************
============================================================ */
$.Isotope.prototype._getCenteredMasonryColumns = function() {
    this.width = this.element.width();
    
    var parentWidth = this.element.parent().width();
    
                  // i.e. options.masonry && options.masonry.columnWidth
    var colW = this.options.masonry && this.options.masonry.columnWidth ||
                  // or use the size of the first item
                  this.$filteredAtoms.outerWidth(true) ||
                  // if there's no items, use size of container
                  parentWidth;
    
    var cols = Math.floor( parentWidth / colW );
    cols = Math.max( cols, 1 );

    // i.e. this.masonry.cols = ....
    this.masonry.cols = cols;
    // i.e. this.masonry.columnWidth = ...
    this.masonry.columnWidth = colW;
  };
  
  $.Isotope.prototype._masonryReset = function() {
    // layout-specific props
    this.masonry = {};
    // FIXME shouldn't have to call this again
    this._getCenteredMasonryColumns();
    var i = this.masonry.cols;
    this.masonry.colYs = [];
    while (i--) {
      this.masonry.colYs.push( 0 );
    }
  };

  $.Isotope.prototype._masonryResizeChanged = function() {
    var prevColCount = this.masonry.cols;
    // get updated colCount
    this._getCenteredMasonryColumns();
    return ( this.masonry.cols !== prevColCount );
  };
  
  $.Isotope.prototype._masonryGetContainerSize = function() {
    var unusedCols = 0,
        i = this.masonry.cols;
    // count unused columns
    while ( --i ) {
      if ( this.masonry.colYs[i] !== 0 ) {
        break;
      }
      unusedCols++;
    }
    
    return {
          height : Math.max.apply( Math, this.masonry.colYs ),
          // fit container to columns that have been used;
          width : (this.masonry.cols - unusedCols) * this.masonry.columnWidth
        };
  };


  // $(function(){
    

$(function() {
 
  // Tweaked from: https://gist.github.com/mattstauffer/3835881
  // No guarantees
  // 1. include Isotope.js
  // 2. include this file
  // 3. customize Isotope options at the bottom of this file
  // 4. add "margin: 0 auto" to the isotope container
 
  $.Isotope.prototype._getMasonryGutterColumns = function() {
    var gutter = this.options.masonry.gutterWidth || 0;
    containerWidth = this.element.parent().width();
    this.masonry.columnWidth = this.options && this.options.masonry.columnWidth ||
      this.$filteredAtoms.outerWidth(true) ||
      containerWidth;
    this.masonry.columnWidth += gutter;
    this.masonry.cols = Math.floor(containerWidth / this.masonry.columnWidth);
    this.masonry.cols = Math.max(this.masonry.cols, 1);
  };
 
  $.Isotope.prototype._masonryReset = function() {
    this.masonry = {};
    this._getMasonryGutterColumns();
    var i = this.masonry.cols;
    this.masonry.colYs = [];
    while (i--) {
      this.masonry.colYs.push( 0 );
    }
  };
 
  $.Isotope.prototype._masonryResizeChanged = function() {
    var prevColCount = this.masonry.cols;
    this._getMasonryGutterColumns();
    return ( this.masonry.cols !== prevColCount );
  };
 
  $.Isotope.prototype._masonryGetContainerSize = function() {
    var gutter = this.options.masonry.gutterWidth || 0;
    var unusedCols = 0,
      i = this.masonry.cols;
    while ( --i ) {
      if ( this.masonry.colYs[i] !== 0 ) {
        break;
      }
      unusedCols++;
    }
    return {
      height : Math.max.apply( Math, this.masonry.colYs ),
      width : ((this.masonry.cols - unusedCols) * this.masonry.columnWidth) - gutter
    };
  };




// =======================

    var $container = $('#container');
      
    $container.isotope({
      sortBy: 'random',
      itemSelector : '.element',
      // masonry : {
      //   columnWidth : 295
      // },
      masonryHorizontal: {
        rowHeight: 360
      },
      layoutMode: 'fitRows'
      });


      $('#a').click( function() {
        $container.isotope('updateSortData').isotope({
          sortBy: 'random'
        });

    });


// $( function() {
//   // init Isotope
//   var $container = $('.isotope').isotope({
//     itemSelector: '.element-item',
//     layoutMode: 'fitRows'
//   });

//       $('#shuffle a').click(function(){
//       $container.isotope('shuffle');
//       $sortBy.find('.selected').removeClass('selected');
//       $sortBy.find('[data-option-value="random"]').addClass('selected');
//       return false;
//     });
  
  
// });



        // layoutMode: 'fitRows'
  
    
      var $optionSets = $('#options .option-set'),
          $optionLinks = $optionSets.find('a');

      $optionLinks.click(function(){
        var $this = $(this);
        // don't proceed if already selected
        if ( $this.hasClass('selected') ) {
          return false;
        }
        var $optionSet = $this.parents('.option-set');
        $optionSet.find('.selected').removeClass('selected');
        $this.addClass('selected');
  
        // make option object dynamically, i.e. { filter: '.my-filter-class' }
        var options = {},
            key = $optionSet.attr('data-option-key'),
            value = $this.attr('data-option-value');
        // parse 'false' as false boolean
        value = value === 'false' ? false : value;
        options[ key ] = value;
        if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
          // changes in layout modes need extra logic
          changeLayoutMode( $this, options )
        } else {
          // otherwise, apply new options
          $container.isotope( options );
        }

        return false;
      });
  });
  

/* =========================================================
**************************prettyPhoto***********************
==========================================================*/
jQuery(window).load(function(){
    jQuery("a[rel^='prettyPhoto']").prettyPhoto({
        overlay_gallery: false,
        "theme": 'light_rounded',
        keyboard_shortcuts: true,
        social_tools: false
    });
});

