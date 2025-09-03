const Dashboard = () => {
// Server-side logic to detect crawler user-agent
  const userAgent = process.env.USER_AGENT || ''; // Example environment variable, or fetch from request headers in middleware
  // For demo, you may fetch client headers via middleware or API
  const isCrawler = /bot|googlebot|crawler|spider|robot|crawling/i.test(userAgent);

  // Render SEO content if crawler, otherwise redirect or render interactive content
  if (isCrawler) {
    return (
      <div>
        <h1>My Flutter Web Application</h1>
        <p>This is SEO-optimized descriptive content about the app.</p>
      </div>
    );
  }

  // For normal users: render placeholder or handle redirect client-side.
  return (
    <div>
      <script
        dangerouslySetInnerHTML={{
          __html: `
          window.location.href = "/dashboard/index.html";
          `,
        }}
      />
    </div>
  );
};

export default Dashboard;
