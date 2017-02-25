var seatData = {}, seats = null;
var selectedSeats = [];

var configureSeat = function() {
  	seats = document.querySelectorAll(".seat-map td:not(.blocked)");
  	for (var i = seats.length - 1; i >= 0; --i) {
  		seats[i].addEventListener('click', function(event) {
  			var target = event.target;
  			target.classList.toggle('seat-selected');
  			seatData[target.id] =
  				target.classList.contains('seat-selected');
  		});
  	}

  	document.getElementById('book-btn-id').addEventListener('click',
  		function(event) {
  			if (selectedSeats.length > 0)
  				selectedSeats.splice(0, selectedSeats.length);

  			var props = Object.getOwnPropertyNames(seatData);
  			props.forEach(function(sid) {
  				if (seatData[sid])
  					selectedSeats.push(sid);
  			});

  			//alert('Seats selected: ' + selectedSeats.length);
                        
                        var _url = window.location.href;
                        _url = _url.replace("SeatMap.jsp", "Payment.jsp?s_s=" + selectedSeats);
          
                         window.location.href = _url;
  		}
  	);
};

window.addEventListener('load', configureSeat, true);
