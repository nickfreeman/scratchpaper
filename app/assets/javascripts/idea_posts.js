function updateCountdown() {
    // 140 is the max message length
    var remaining = 140 - jQuery('#idea_blurb').val().length;
    jQuery('#idea-countdown').text(remaining)
    //.text(remaining + ' characters remaining');
}

jQuery(document).ready(function($) {
    updateCountdown();
    $('#idea_blurb').change(updateCountdown);
    $('#idea_blurb').keyup(updateCountdown);
});