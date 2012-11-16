jQuery(document).ready(function($) {
        $(".royalSlider").royalSlider({
		  fullscreen: {
		  enabled: true,
		  nativeFS: true
		  },
		controlNavigation: 'thumbnails',
		//autoScaleSlider: true,
		//autoScaleSliderWidth: 960,
		//autoScaleSliderHeight: 850,
		loop: false,
		numImagesToPreload: 4,
		arrowsNavAutoHide: true,
		arrowsNavHideOnTouch: true,
		keyboardNavEnabled: true,
		video: {
		    		youTubeCode: '<iframe src="http://www.youtube.com/embed/3F1_04GLrPs?rel=1&autoplay=1&showinfo=0" frameborder="no"></iframe>',
		    		autoHideBlocks: true,
		    		autoHideArrows: false
		    	}
		});
    });