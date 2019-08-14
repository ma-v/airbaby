const updateInput = (priceCents) => {
  const input = document.getElementById('price-input');
  input.value = priceCents;
};

const updateCTA = (priceCents) => {
  const button = document.getElementById('submit');
  button.value = `Pay ${priceCents / 100} €`;
};

const updateForm = (event) => {
  // const days = nombre de jours selected dans le datepicker
  const unitPriceCents = document.getElementById('price').dataset.amountCents;
  const priceCents = unitPriceCents; //* days;
  updateInput(priceCents);
  updateCTA(priceCents);
};

//à changer lorsqu'on aura un date picker
const updateFormOnDatepickerSubmit = (datepicker) => {
  datepicker.addEventListener('click', updateForm);
};

export { updateFormOnDatepickerSubmit };