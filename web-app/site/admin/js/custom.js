jQuery(function() {
    "use strict";
    var quickfitText = function(reset) {
        var quickFitClass = "quickfit"; //Base class of elements to adapt
        var quickFitGroupClass = "quickfitGroup"; //Elements in a group will all have the same size
        var quickFitIndependantClass = "quickfitIndependant"; //Elements with this class won't be taken for quickfitGroup (they will be independant)
        var quickFitSetClass = "quickfitSet"; //Elements with size set will get this class
        var quickFitFontSizeData = "quickfit-font-size";
        //Set the font-size property of your element to the MINIMUM size you want for your content

        if (reset) {
            jQuery("." + quickFitSetClass).removeClass(quickFitSetClass);
        }

        //The magic happens here
        var setMaxTextSize = function(jElement) {
            //Get and set the font size into data for reuse upon resize
            var fontSize = parseInt(jElement.data(quickFitFontSizeData)) || parseInt(jElement.css("font-size"));
            jElement.data(quickFitFontSizeData, fontSize);

            //Gradually increase font size unti the element gets a big increase in height (ie line break)
            var i = 0;
            var previousHeight;
            do {
                previousHeight = jElement.height();
                jElement.css("font-size", "" + (++fontSize) + "px");
            }
            while (i++ < 30 && jElement.height() - previousHeight < fontSize / 2);

            //Finally, go back before the increase in height and set the element as resized by adding quickFitSetClass
            fontSize -= 1;
            jElement.addClass(quickFitSetClass).css("font-size", "" + fontSize + "px");

            return fontSize;
        };
        jQuery("." + quickFitClass).each(function() {
            var jThis = $(this);

            if (!jThis.hasClass(quickFitSetClass)) {
                var jFitGroup = jThis.closest("." + quickFitGroupClass);
                if (!jThis.hasClass(quickFitIndependantClass) && jFitGroup.length > 0) {
                    //We are in a group, set the max fit size for all
                    var minFontSize = 1000;
                    jFitGroup.find("." + quickFitClass + ":not(." + quickFitIndependantClass + ")").each(function(i, item) {
                        minFontSize = Math.min(minFontSize, setMaxTextSize($(item)));
                    }).css("font-size", "" + minFontSize + "px");
                } else {
                    setMaxTextSize(jThis);
                }
            }
        });
    };
    quickfitText(); //Run once...
    jQuery(window).on("resize orientationchange", function() {
        quickfitText(true);
    });
});


$(function() {
    "use strict";
    $('[data-tooltip="tooltip"]').tooltip({});
    $("#menuModal").draggable({
        handle: ".modal-dialog"
    });
});


var Plugins;
(function(Plugins) {
    "use strict";
    var AutosizeInput = (function() {
        function AutosizeInput(input, options) {
            var _this = this;
            this._input = $(input);
            this._options = options;
            this._mirror = $('<span style="position:absolute; top:-999px; left:0; white-space:pre;"/>');
            $.each([
                'fontFamily',
                'fontSize',
                'fontWeight',
                'fontStyle',
                'letterSpacing',
                'textTransform',
                'wordSpacing',
                'textIndent'
            ], function(i, val) {
                _this._mirror[0].style[val] = _this._input.css(val);
            });
            $("body").append(this._mirror);
            this._input.bind("keydown input", function(e) {
                _this.update();
            });
            (function() {
                _this.update();
            })();
        }
        Object.defineProperty(AutosizeInput.prototype, "options", {
            get: function() {
                return this._options;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(AutosizeInput, "instanceKey", {
            get: function() {
                return "autosizeInputInstance";
            },
            enumerable: true,
            configurable: true
        });
        AutosizeInput.prototype.update = function() {
            var value = this._input.val();
            if (!value) {
                value = this._input.attr("placeholder");
            }
            if (value === this._mirror.text()) {
                return;
            }
            this._mirror.text(value);
            var newWidth = this._mirror.width() + this._options.space;
            this._input.width(newWidth);
        };
        return AutosizeInput;
    })();
    Plugins.AutosizeInput = AutosizeInput;
    var AutosizeInputOptions = (function() {
        function AutosizeInputOptions(space) {
            if (typeof space === "undefined") {
                space = 30;
            }
            this._space = space;
        }
        Object.defineProperty(AutosizeInputOptions.prototype, "space", {
            get: function() {
                return this._space;
            },
            set: function(value) {
                this._space = value;
            },
            enumerable: true,
            configurable: true
        });
        return AutosizeInputOptions;
    })();
    Plugins.AutosizeInputOptions = AutosizeInputOptions;
    (function($) {
        var pluginDataAttributeName = "autosize-input";
        var validTypes = [
            "text",
            "password",
            "search",
            "url",
            "tel",
            "email"
        ];
        $.fn.autosizeInput = function(options) {
            return this.each(function() {
                if (!(this.tagName === "INPUT" && $.inArray(this.type, validTypes) > -1)) {
                    return;
                }
                var $this = $(this);
                if (!$this.data(Plugins.AutosizeInput.instanceKey)) {
                    if (options === undefined) {
                        options = $this.data(pluginDataAttributeName);
                        if (!(options && typeof options === 'object')) {
                            options = new AutosizeInputOptions();
                        }
                    }
                    $this.data(Plugins.AutosizeInput.instanceKey, new Plugins.AutosizeInput(this, options));
                }
            });
        };
        $(function() {
            $("input[data-" + pluginDataAttributeName + "]").autosizeInput();
        });
    })(jQuery);
})(Plugins || (Plugins = {}));


window.onmousedown = function(e) {
    "use strict";
    var el = e.target;
    if (el.tagName.toLowerCase() === 'option' && el.parentNode.hasAttribute('multiple')) {
        e.preventDefault();

        // toggle selection
        if (el.hasAttribute('selected')) {
            el.removeAttribute('selected');
        } else {
            el.setAttribute('selected', '');
        }

        // hack to correct buggy behavior
        var select = el.parentNode.cloneNode(true);
        el.parentNode.parentNode.replaceChild(select, el.parentNode);
    }
};




$('[class*="section-"], a[href*=#]').click(function(){
	"use strict";
    $('.side-collapse').addClass('in');
});



$(window).scroll(function(){"use strict";var scroll=$(window).scrollTop();if(scroll>=400){$(".navbar-header").removeClass("visible-xs");}else{$(".navbar-header").addClass("visible-xs");}});


$(document)
    .on('show.bs.modal', '.modal', function(event) {
        "use strict";
        $(this).appendTo($('body'));
    })
    .on('shown.bs.modal', '.modal.in', function(event) {
        "use strict";
        setModalsAndBackdropsOrder();
    })
    .on('hidden.bs.modal', '.modal', function(event) {
        "use strict";
        setModalsAndBackdropsOrder();
    });

function setModalsAndBackdropsOrder() {
    "use strict";
    var modalZIndex = 1040;
    $('.modal.in').each(function(index) {
        var $modal = $(this);
        modalZIndex++;
        $modal.css('zIndex', modalZIndex);
        $modal.next('.modal-backdrop.in').addClass('hidden').css('zIndex', modalZIndex - 1);
    });
    $('.modal.in:visible:last').focus().next('.modal-backdrop.in').removeClass('hidden');
}

$(function() {
    "use strict";
    $('.autoclose').on('show.bs.modal', function() {
        var myModal = $(this);
        clearTimeout(myModal.data('hideInterval'));
        myModal.data('hideInterval', setTimeout(function() {
            myModal.modal('hide');
        }, 1000));
    });
});

$("select").change(function() {
    "use strict";
    if ($(this).val() === "0") {
        $(this).addClass("empty");
    } else {
        $(this).removeClass("empty");
    }
});
$("select").change();


$('.carousel[data-type="multi"] .item').each(function() {
    "use strict";
    var next = $(this).next();
    if (!next.length) {
        next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));

    for (var i = 0; i < 2; i++) {
        next = next.next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }

        next.children(':first-child').clone().appendTo($(this));
    }
});

    $(".up,.down").click(function(){
		"use strict";
        var row = $(this).parents("tr:first");
        if ($(this).is(".up")) {
            row.insertBefore(row.prev());
        } else {
            row.insertAfter(row.next());
        }
    });
$('a.thumbnail').on('click', function(e) {
    "use strict";
    e.preventDefault();
    $('a.thumbnail.active').removeClass('active');
    $(this).addClass('active');
});


$('#mobil img').hover(function(){
	"use strict";
    $('#mobil img.active').removeClass('active');
	$(this).addClass('active');
});

$('.navbar a[href*=#]:not([href=#])').click(function () {
	"use strict";
        if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: (target.offset().top - 10)
                }, 850);
                return false;
            }
        }
    });

            var sideslider = $('[data-toggle=collapse-side]');
            var sel = sideslider.attr('data-target');
            var sel2 = sideslider.attr('data-target-2');
            sideslider.click(function(event){
				"use strict";
                $(sel).toggleClass('in');
                $(sel2).toggleClass('out');
            });