$(document).ready(function () {

    var location_ = window.location;

    var baseUrl = location_.protocol + '//' + location_.host;

    //to avoid resubmiting forms when switching language
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }

    // routing system for the front end
    function  getCurrentPath() {
        let current_path = $(location).attr('pathname');
        current_path = decodeURIComponent(current_path);
        if(current_path.match(/أسماء-الأشهر/) || current_path.match(/months/)){
            return 'months';
        }
        else if(current_path.match(/التقويم-الهجري/) || current_path.match(/hijri/)){
            return 'hijri';
        }
        else if(current_path.match(/التقويم-الميلادي/) || current_path.match(/georgian/)){
            return 'georgian';
        }
        else if(current_path == '/' || current_path == '/en'){
            return 'home';
        }
        else {
            return false;
        }
    }

    if(getCurrentPath() == 'hijri'){
        $('.header-of-page__content .full_today').show();
    }



    //get months name
    if(getCurrentPath() === 'months') {
        var i = 0;
        var types = ['hijri', 'georgian', 'solar'];
        $('.list-months__table tbody').each(function () {
            fillMonthNames(types[i], this);
            i++;
      });
    }

    function fillMonthNames(type, current){

        var url = baseUrl + '/api/months';
        let lang = $('.curr_lang').val();
        $.ajax({
            'method': 'POST',
            'url': url,
            'data': {
                'calendar_type': type,
                'lang': lang
            },
            'cache': false,
            'success': function (data) {
                $.each(data, function (index, value) {
                    var tr = '<tr><td>' +
                        index +
                        '</td><td>' +
                        value +
                        '</td></tr>';
                    $(current).append(tr);
                });
            },
            'complete': function () {

            }
        });
    }


    $(window).scroll(function () {
        if ($(document).scrollTop() > 0) {
            $('.navbar').addClass('navbar-scrolling');
        } else {
            $('.navbar').removeClass('navbar-scrolling');
        }
    });

    //the horloge code
    /*
    $('#time-part').html(moment().format('A hh:mm:ss'));

    setInterval(function() {
        var momentNow = moment();

        $('#time-part').html(momentNow.locale('ar').format('hh:mm:ss'));
    }, 100);
    */



    var countDownDate = new Date("Apr 24, 2020 00:00:00").getTime();


    var countDownInterval = setInterval(function () {
        // Get today's date and time
        var now = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        $('.ramadan .seconds').text(seconds);
        $('.ramadan .minutes').text(minutes);
        $('.ramadan .hours').text(hours);
        $('.ramadan .days').text(days);
        if (distance < 0) {
            clearInterval(countDownInterval);
            $('.ramadan .card-body').html('Ramadan Kerim');
        }
    }, 1000);


    $('.lang_switcher').click(function () {
        $('#switch_lang_form').submit();
    });

    //switch the from
    $('.converter-switch button').click(function () {

        //change from value
        val = ($('.convert-button__row #from').val() == 'georgian') ? 'hijri' : 'georgian';

        switch (val) {
            case 'hijri':
                $('.converter-select .georgian, .Gto').hide();
                $('.converter-select .hijri, .Hto').show();
                break;
            case 'georgian':
                $('.converter-select .hijri, .Hto').hide();
                $('.converter-select .georgian, .Gto').show();
        }

        $('.convert-button__row #from').val(val);
    });

    //when click the convert button
    $('#convert-button').click(function () {

        $('.converter .result-table').hide();
        $('.converter .loading').show();
        //static value
        var url = baseUrl + '/api/convert';
        var day, month, year;
        var lang = $('.curr_lang').val();

        //get current converter type [from] ---> to
        var val = $('.convert-button__row #from').val();

        if(val == 'hijri'){
            day = $('.converter .hijri#day').val();
            month = $('.converter .hijri#month').val();
            year = $('.converter .hijri#year').val();
        }
        else if(val == 'georgian'){
            day = $('.converter .georgian#day').val();
            month = $('.converter .georgian#month').val();
            year = $('.converter .georgian#year').val();
        }

        $.ajax({
            type: 'POST',
            url: url,
            data: {
                'year': year,
                'month': month,
                'day': day,
                'from': val,
                'lang': lang
            },
            cache: false,
            success: function (data) {
                $('.hijri-date').html(data.hijri_ar);
                $('.hijri-date__numeric').html(data.hijri_numeric);
                $('.georgian-date').html(data.georgian_ar);
                $('.georgian-date__numeric').html(data.georgian_numeric);
            },
            complete: function () {
                $('.converter .loading').hide();
                $('.converter .result-table').show();

            }
        });
    });

    setTimeout(function(){
        $('#convert-button').click();
    },1);


    //to get calendar hijri
    var current_year;

    function fillCalendar(url, current_year) {
        $.ajax({
            'method': 'POST',
            'url': url,
            'data': {
                'year': current_year
            },
            'cache': false,
            'success': function (html) {
                $('.calender-content__container').html(html);
            },
            'complete': function () {
                $('.calendar-hijri__month td').hover(function () {
                    $(this).find('sub').css('opacity', '1');
                }, function () {
                    $(this).find('sub').css('opacity', '0.1');
                });
            }
        });
    }

    /*
    //to fill the hijri calendar
    function fillHijriCalendar() {
        let url = baseUrl + '/api/hijri';
        let current_year = $('.calendar-hijri .actual-year').text();
        if(current_year.length === 4) {
            fillCalendar(url, current_year);
        }
    }

    //to fill the georgian calendar
    function fillGeorgianCalendar() {
        let url = baseUrl + '/api/georgian';
        let current_year = $('.calendar-hijri .actual-year').text();
        if(current_year.length === 4) {
            fillCalendar(url, current_year);
        }
    }

    */
    
    if(getCurrentPath() == 'hijri'){
        fillHijriCalendar();
    }
    else if(getCurrentPath() == 'georgian'){
        fillGeorgianCalendar();
    }


});




