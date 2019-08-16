const initBookingForm = () => {
  const start = document.getElementById('booking_start_date');
  const end = document.getElementById('booking_end_date');

  const updateInput = (priceCents) => {
    const input = document.getElementById('booking_price');
    input.value = priceCents;
  };

  const updateCTA = (priceCents) => {
    const button = document.getElementById('submit');
    button.value = `Book for ${priceCents / 100} €`;
  };

  const updateForm = (event) => {
    const days = ((new Date(end.value) - new Date(start.value)) / 86400000) + 1;
    const unitPriceCents = document.getElementById('price').dataset.amountCents;
    const priceCents = unitPriceCents * days;
    updateInput(priceCents);
    updateCTA(priceCents);
  };

  //à changer lorsqu'on aura un date picker
  if (start) {
    start.addEventListener('change', (e) => {
      if (start.value) {
        end.removeAttribute("disabled");
      }
      else {
        end.setAttribute("disabled", "disabled");
      }
    })
  };

  if (end) {
    end.addEventListener('change', (e) => {
      if (end.value) {
        updateForm();
      }
    });
  }
};

export { initBookingForm };
