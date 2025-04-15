const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello from Cloud Run!');
});

// ✅ 使用 Cloud Run 提供的 PORT 环境变量
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
});

