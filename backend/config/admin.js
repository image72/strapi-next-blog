module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'b1f7421109d1dcf48781069fb348fcb7'),
  },
});
