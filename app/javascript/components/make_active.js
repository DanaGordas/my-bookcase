function makeActive() {
  const list = document.querySelectorAll('.nav-item');
  list.forEach(item => {
    item.addEventListener('click',function() {
      list.forEach(itm => itm.classList.remove('active'));
      this.classList.add('active');
    });
  });
}

export { makeActive };
