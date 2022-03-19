module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '5941e44c8072eb0b7382c00a568cca86'),
  },
});
