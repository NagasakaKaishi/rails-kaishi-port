import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from "@fullcalendar/interaction";

document.addEventListener("turbolinks:load", function () {
  var calendarEl = document.getElementById("calendar");

  var calendar = new Calendar(calendarEl, {
    plugins: [dayGridPlugin, interactionPlugin],

    selectable: true,
    select: function (info) {
      // alert("selected " + info.startStr + " to " + info.endStr);
      const eventName = prompt("イベントを入力してください");

      if (eventName) {
        // イベントの追加
        calendar.addEvent({
          title: eventName,
          start: info.start,
          end: info.end,
          allDay: true,
        });
      }
    },
  });

  calendar.render();
});
