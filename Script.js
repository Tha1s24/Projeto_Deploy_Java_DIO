document.getElementById('comentarioForm').addEventListener('submit', async function(e) {
  e.preventDefault();
  const formData = new FormData(this);
  const response = await fetch('http://localhost/backend/index.php', {
    method: 'POST',
    body: formData
  });
  const result = await response.text();
  alert(result);
});
