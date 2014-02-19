var MemphisRuby = {
  calendarLookup: function() {
    $.getJSON("//api.memphisruby.org/calendar.json?keyword=memphis+ruby");
  },

  setCalendar: function(data) {
    MemphisRuby.calendar = data;
    console.log("Calendar loaded.");
  }
};
