import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from "@fullcalendar/interaction";

document.addEventListener("turbolinks:load", function () {
  var calendarEl = document.getElementById("calendar");

  var calendar = new Calendar(calendarEl, {
    plugins: [dayGridPlugin, interactionPlugin],
    events: "/events.json",
    locale: "ja",
    displayEventTime: false,

    dateClick: function (info) {
      location.href = "events/new?time=" + info.dateStr;
    },

    dayCellContent: function (e) {
      e.dayNumberText = e.dayNumberText.replace("日", "");
    },
    buttonText: {
      today: "今月",
      month: "月",
      list: "リスト",
    },
  });

  calendar.render();
});
