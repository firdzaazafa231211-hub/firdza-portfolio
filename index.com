<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Firdza Azafa Dwi Permana | Portfolio</title>

  <meta name="description"
    content="Portfolio Firdza Azafa Dwi Permana, pelajar kelas 9 SMP N 36 Semarang dengan minat di bidang design, editing, fotografi, dan Pramuka.">

  <meta name="keywords"
    content="Firdza Azafa Dwi Permana, Firdza Azafa, portfolio, designer, fotografer, editing, Pramuka, SMP N 36 Semarang">

  <meta name="author" content="Firdza Azafa Dwi Permana">

  <!-- GOOGLE SEARCH CONSOLE -->
  <meta name="google-site-verification"
    content="MyqMYj0bxpnA0xGhbTTm7wixfTf8cj7w1HnNK_3bYCk">

  <meta name="theme-color" content="#05070d">

  <style>

    /* =========================
       RESET
    ========================= */

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      scroll-behavior: smooth;
    }

    :root {
      --bg: #05070d;
      --bg2: #080d18;
      --card: rgba(13, 20, 35, 0.78);
      --blue: #009dff;
      --cyan: #00e5ff;
      --white: #f5f9ff;
      --muted: #9ba8bb;
      --border: rgba(0, 174, 255, 0.20);
    }

    body {
      font-family: Arial, Helvetica, sans-serif;
      background:
        radial-gradient(
          circle at 15% 10%,
          rgba(0, 157, 255, 0.14),
          transparent 30%
        ),
        radial-gradient(
          circle at 85% 60%,
          rgba(0, 229, 255, 0.08),
          transparent 30%
        ),
        var(--bg);

      color: var(--white);
      line-height: 1.6;
      overflow-x: hidden;
    }

    /* GRID BACKGROUND */

    body::before {
      content: "";
      position: fixed;
      inset: 0;

      background-image:
        linear-gradient(
          rgba(0, 174, 255, 0.08) 1px,
          transparent 1px
        ),
        linear-gradient(
          90deg,
          rgba(0, 174, 255, 0.08) 1px,
          transparent 1px
        );

      background-size: 50px 50px;
      pointer-events: none;
      z-index: -2;
    }

    body::after {
      content: "";
      position: fixed;
      width: 500px;
      height: 500px;
      background: rgba(0, 157, 255, 0.08);
      filter: blur(120px);
      border-radius: 50%;
      top: 20%;
      right: -250px;
      pointer-events: none;
      z-index: -1;
    }


    /* =========================
       NAVBAR
    ========================= */

    nav {
      position: fixed;
      top: 0;
      left: 0;

      width: 100%;
      height: 70px;

      display: flex;
      justify-content: space-between;
      align-items: center;

      padding: 0 8%;

      background: rgba(5, 7, 13, 0.78);
      backdrop-filter: blur(15px);

      border-bottom: 1px solid var(--border);

      z-index: 1000;
    }

    .logo {
      font-size: 22px;
      font-weight: bold;
      letter-spacing: 1px;
    }

    .logo span {
      color: var(--cyan);
    }

    nav ul {
      display: flex;
      gap: 28px;
      list-style: none;
    }

    nav a {
      color: var(--muted);
      text-decoration: none;
      font-size: 14px;
      transition: 0.3s;
    }

    nav a:hover {
      color: var(--cyan);
    }


    /* =========================
       HERO
    ========================= */

    .hero {
      min-height: 100vh;

      display: flex;
      align-items: center;

      padding: 120px 8% 80px;

      position: relative;
    }

    .hero-content {
      max-width: 850px;
    }

    .badge {
      display: inline-block;

      padding: 8px 15px;

      border: 1px solid var(--border);
      border-radius: 30px;

      background: rgba(0, 157, 255, 0.08);

      color: var(--cyan);

      font-size: 13px;

      margin-bottom: 25px;
    }

    .hero h1 {
      font-size: clamp(45px, 8vw, 90px);

      line-height: 0.98;

      letter-spacing: -4px;

      margin-bottom: 25px;
    }

    .gradient-text {
      background:
        linear-gradient(
          90deg,
          #ffffff,
          #00bfff,
          #ffffff
        );

      background-size: 200%;

      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;

      animation: gradient 5s linear infinite;
    }

    @keyframes gradient {
      0% {
        background-position: 0%;
      }

      100% {
        background-position: 200%;
      }
    }

    .hero-subtitle {
      font-size: 21px;
      color: var(--cyan);
      margin-bottom: 15px;
      font-weight: bold;
    }

    .hero p {
      max-width: 680px;

      color: var(--muted);

      font-size: 17px;

      margin-bottom: 30px;
    }

    .hero-buttons {
      display: flex;
      gap: 15px;
      flex-wrap: wrap;
    }

    .btn {
      padding: 13px 23px;

      border-radius: 8px;

      text-decoration: none;

      font-size: 14px;
      font-weight: bold;

      transition: 0.3s;
    }

    .btn-primary {
      background: var(--blue);
      color: white;

      box-shadow:
        0 0 25px rgba(0, 157, 255, 0.3);
    }

    .btn-primary:hover {
      transform: translateY(-3px);

      box-shadow:
        0 0 35px rgba(0, 157, 255, 0.55);
    }

    .btn-outline {
      color: white;

      border: 1px solid var(--border);

      background: rgba(255,255,255,0.03);
    }

    .btn-outline:hover {
      border-color: var(--cyan);
      color: var(--cyan);
    }


    /* =========================
       GENERAL
    ========================= */

    section {
      padding: 100px 8%;
    }

    .section-title {
      margin-bottom: 50px;
    }

    .section-title small {
      color: var(--cyan);

      text-transform: uppercase;

      letter-spacing: 3px;

      font-size: 12px;
    }

    .section-title h2 {
      font-size: 42px;

      margin-top: 8px;
    }

    .section-title p {
      color: var(--muted);

      max-width: 650px;

      margin-top: 10px;
    }


    /* =========================
       CARDS
    ========================= */

    .card {
      background: var(--card);

      border: 1px solid var(--border);

      border-radius: 18px;

      padding: 30px;

      backdrop-filter: blur(10px);

      transition: 0.3s;
    }

    .card:hover {
      transform: translateY(-5px);

      border-color: rgba(0,229,255,0.5);

      box-shadow:
        0 15px 40px rgba(0,0,0,0.25);
    }


    /* =========================
       ABOUT
    ========================= */

    .about-grid {
      display: grid;

      grid-template-columns: 1fr 1fr;

      gap: 25px;
    }

    .card h3 {
      font-size: 22px;

      margin-bottom: 15px;
    }

    .card p {
      color: var(--muted);
    }

    .profile-list {
      list-style: none;
    }

    .profile-list li {
      display: flex;

      justify-content: space-between;

      gap: 20px;

      padding: 13px 0;

      border-bottom:
        1px solid rgba(255,255,255,0.07);
    }

    .profile-list li:last-child {
      border-bottom: none;
    }

    .profile-list strong {
      color: white;
    }

    .profile-list span {
      color: var(--muted);

      text-align: right;
    }


    /* =========================
       STATS
    ========================= */

    .stats {
      display: grid;

      grid-template-columns:
        repeat(4, 1fr);

      gap: 18px;

      margin-top: 25px;
    }

    .stat {
      text-align: center;

      padding: 30px 15px;

      background: rgba(10,17,30,0.75);

      border:
        1px solid var(--border);

      border-radius: 15px;
    }

    .stat-number {
      font-size: 38px;

      font-weight: bold;

      color: var(--cyan);
    }

    .stat-label {
      color: var(--muted);

      font-size: 13px;
    }


    /* =========================
       SKILLS
    ========================= */

    .skills {
      display: grid;

      grid-template-columns:
        repeat(2, 1fr);

      gap: 20px;
    }

    .skill {
      padding: 25px;

      background: var(--card);

      border:
        1px solid var(--border);

      border-radius: 15px;
    }

    .skill-top {
      display: flex;

      justify-content: space-between;

      margin-bottom: 12px;
    }

    .skill-name {
      font-weight: bold;
    }

    .skill-type {
      color: var(--cyan);

      font-size: 12px;
    }

    .skill-bar {
      width: 100%;

      height: 7px;

      background: #151c29;

      border-radius: 20px;

      overflow: hidden;
    }

    .skill-fill {
      height: 100%;

      background:
        linear-gradient(
          90deg,
          var(--blue),
          var(--cyan)
        );

      border-radius: 20px;
    }


    /* =========================
       INTERESTS
    ========================= */

    .interest-grid {
      display: grid;

      grid-template-columns:
        repeat(3, 1fr);

      gap: 20px;
    }

    .interest {
      padding: 30px;

      border:
        1px solid var(--border);

      border-radius: 17px;

      background: var(--card);

      text-align: center;

      transition: 0.3s;
    }

    .interest:hover {
      transform: translateY(-6px);

      border-color: var(--cyan);
    }

    .interest-icon {
      font-size: 40px;

      margin-bottom: 15px;
    }

    .interest h3 {
      margin-bottom: 8px;
    }

    .interest p {
      color: var(--muted);

      font-size: 14px;
    }


    /* =========================
       ACHIEVEMENTS
    ========================= */

    .achievement-grid {
      display: grid;

      grid-template-columns:
        repeat(2, 1fr);

      gap: 18px;
    }

    .achievement {
      display: flex;

      gap: 20px;

      padding: 25px;

      background: var(--card);

      border:
        1px solid var(--border);

      border-radius: 16px;

      transition: 0.3s;
    }

    .achievement:hover {
      transform: translateY(-4px);

      border-color: var(--cyan);
    }

    .achievement-number {
      min-width: 48px;
      height: 48px;

      display: flex;

      justify-content: center;
      align-items: center;

      border-radius: 12px;

      background:
        rgba(0,157,255,0.12);

      border:
        1px solid var(--border);

      color: var(--cyan);

      font-weight: bold;
    }

    .achievement h3 {
      font-size: 17px;

      margin-bottom: 5px;
    }

    .achievement p {
      color: var(--muted);

      font-size: 13px;
    }


    /* =========================
       PROJECT
    ========================= */

    .project {
      display: grid;

      grid-template-columns: 1fr 1fr;

      gap: 30px;

      align-items: center;
    }

    .project-box {
      min-height: 300px;

      display: flex;

      justify-content: center;
      align-items: center;

      text-align: center;

      border:
        1px solid var(--border);

      border-radius: 20px;

      background:
        radial-gradient(
          circle,
          rgba(0,157,255,0.16),
          transparent 60%
        );

      position: relative;

      overflow: hidden;
    }

    .project-box::before {
      content: "";

      position: absolute;

      width: 220px;
      height: 220px;

      border:
        1px solid rgba(0,229,255,0.2);

      transform: rotate(45deg);
    }

    .project-symbol {
      font-size: 60px;

      z-index: 1;
    }

    .project-content h3 {
      font-size: 28px;

      margin-bottom: 15px;
    }

    .project-content p {
      color: var(--muted);

      margin-bottom: 20px;
    }

    .tags {
      display: flex;

      flex-wrap: wrap;

      gap: 8px;
    }

    .tag {
      padding: 7px 12px;

      background:
        rgba(0,157,255,0.08);

      border:
        1px solid var(--border);

      border-radius: 20px;

      color: var(--cyan);

      font-size: 12px;
    }


    /* =========================
       ACTIVITIES
    ========================= */

    .activity-list {
      max-width: 850px;

      margin: auto;
    }

    .activity {
      display: flex;

      gap: 25px;

      position: relative;

      padding-bottom: 35px;
    }

    .activity:last-child {
      padding-bottom: 0;
    }

    .activity::before {
      content: "";

      position: absolute;

      left: 9px;
      top: 20px;
      bottom: 0;

      width: 1px;

      background:
        rgba(0,229,255,0.25);
    }

    .activity:last-child::before {
      display: none;
    }

    .activity-dot {
      width: 20px;
      height: 20px;

      min-width: 20px;

      border-radius: 50%;

      background: var(--cyan);

      box-shadow:
        0 0 15px rgba(0,229,255,0.7);

      z-index: 1;
    }

    .activity-content h3 {
      margin-bottom: 5px;
    }

    .activity-content p {
      color: var(--muted);
    }


    /* =========================
       IQ
    ========================= */

    .iq-section {
      text-align: center;
    }

    .iq-card {
      max-width: 700px;

      margin: auto;

      padding: 50px 30px;

      background:
        linear-gradient(
          145deg,
          rgba(0,157,255,0.12),
          rgba(0,229,255,0.03)
        );

      border:
        1px solid var(--border);

      border-radius: 25px;
    }

    .iq-number {
      font-size: 80px;

      line-height: 1;

      font-weight: bold;

      color: var(--cyan);

      text-shadow:
        0 0 30px rgba(0,229,255,0.3);

      margin-bottom: 15px;
    }

    .iq-card h3 {
      margin-bottom: 10px;
    }

    .iq-card p {
      color: var(--muted);

      font-size: 13px;
    }


    /* =========================
       CONTACT
    ========================= */

    .contact {
      text-align: center;

      max-width: 800px;

      margin: auto;
    }

    .contact h2 {
      font-size: 45px;

      margin-bottom: 15px;
    }

    .contact p {
      color: var(--muted);

      margin-bottom: 25px;
    }


    /* =========================
       FOOTER
    ========================= */

    footer {
      padding: 30px 8%;

      border-top:
        1px solid var(--border);

      text-align: center;

      color: var(--muted);

      font-size: 13px;
    }

    footer strong {
      color: var(--cyan);
    }


    /* =========================
       ANIMATION
    ========================= */

    .fade {
      animation: fadeUp 1s ease forwards;
    }

    @keyframes fadeUp {
      from {
        opacity: 0;
        transform: translateY(25px);
      }

      to {
        opacity: 1;
        transform: translateY(0);
      }
    }


    /* =========================
       MOBILE
    ========================= */

    @media (max-width: 850px) {

      nav {
        padding: 0 5%;
      }

      nav ul {
        gap: 12px;
      }

      nav a {
        font-size: 11px;
      }

      section {
        padding: 75px 5%;
      }

      .hero {
        padding: 110px 5% 70px;
      }

      .hero h1 {
        font-size: 53px;

        letter-spacing: -2px;
      }

      .hero p {
        font-size: 15px;
      }

      .about-grid,
      .project {
        grid-template-columns: 1fr;
      }

      .stats {
        grid-template-columns:
          repeat(2, 1fr);
      }

      .skills {
        grid-template-columns: 1fr;
      }

      .interest-grid {
        grid-template-columns: 1fr;
      }

      .achievement-grid {
        grid-template-columns: 1fr;
      }

      .section-title h2 {
        font-size: 34px;
      }

      .contact h2 {
        font-size: 34px;
      }

      .profile-list li {
        flex-direction: column;
        gap: 3px;
      }

      .profile-list span {
        text-align: left;
      }

    }


    @media (max-width: 500px) {

      nav ul {
        display: none;
      }

      .logo {
        font-size: 19px;
      }

      .hero h1 {
        font-size: 45px;
      }

      .stats {
        grid-template-columns: 1fr 1fr;
      }

      .stat-number {
        font-size: 30px;
      }

      .card {
        padding: 22px;
      }

      .achievement {
        padding: 20px;
      }

      .iq-number {
        font-size: 65px;
      }

    }

  </style>
</head>

<body>


  <!-- =========================
       NAVBAR
  ========================= -->

  <nav>

    <div class="logo">
      F<span>AP</span>
    </div>

    <ul>
      <li>
        <a href="#home">Home</a>
      </li>

      <li>
        <a href="#about">About</a>
      </li>

      <li>
        <a href="#skills">Skills</a>
      </li>

      <li>
        <a href="#achievements">Prestasi</a>
      </li>

      <li>
        <a href="#project">Project</a>
      </li>
    </ul>

  </nav>



  <!-- =========================
       HERO
  ========================= -->

  <section class="hero" id="home">

    <div class="hero-content fade">

      <div class="badge">
        PORTFOLIO • 2026
      </div>

      <div class="hero-subtitle">
        STUDENT • DESIGNER • PHOTOGRAPHER
      </div>

      <h1>
        Firdza Azafa
        <span class="gradient-text">
          Dwi Permana
        </span>
      </h1>

      <p>
        Pelajar kelas 9 dari SMP N 36 Semarang
        yang memiliki ketertarikan pada design,
        editing, fotografi, dan dunia Pramuka.
      </p>

      <div class="hero-buttons">

        <a
          href="#about"
          class="btn btn-primary">
          Jelajahi Portfolio
        </a>

        <a
          href="#achievements"
          class="btn btn-outline">
          Lihat Prestasi
        </a>

      </div>

    </div>

  </section>



  <!-- =========================
       ABOUT
  ========================= -->

  <section id="about">

    <div class="section-title">

      <small>01 — About Me</small>

      <h2>Tentang Saya</h2>

      <p>
        Mengenal lebih dekat siapa saya,
        minat yang saya tekuni, dan hal-hal
        yang sedang saya kembangkan.
      </p>

    </div>


    <div class="about-grid">


      <div class="card">

        <h3>Profil</h3>

        <p>
          Saya adalah Firdza Azafa Dwi Permana,
          seorang pelajar yang sedang mengembangkan
          kemampuan di bidang kreatif, khususnya
          design, editing, dan fotografi.
        </p>

        <br>

        <p>
          Selain dunia kreatif, saya juga aktif
          dalam kegiatan dan kompetisi yang
          berkaitan dengan Pramuka.
        </p>

      </div>


      <div class="card">

        <h3>Data Diri</h3>

        <ul class="profile-list">

          <li>
            <strong>Nama</strong>
            <span>Firdza Azafa Dwi Permana</span>
          </li>

          <li>
            <strong>Kelas</strong>
            <span>9</span>
          </li>

          <li>
            <strong>Sekolah</strong>
            <span>SMP N 36 Semarang</span>
          </li>

          <li>
            <strong>Kota</strong>
            <span>Semarang</span>
          </li>

          <li>
            <strong>Fokus</strong>
            <span>Design & Fotografi</span>
          </li>

        </ul>

      </div>

    </div>


    <div class="stats">

      <div class="stat">

        <div class="stat-number">
          8+
        </div>

        <div class="stat-label">
          Prestasi
        </div>

      </div>


      <div class="stat">

        <div class="stat-number">
          2
        </div>

        <div class="stat-label">
          Juara 1
        </div>

      </div>


      <div class="stat">

        <div class="stat-number">
          3
        </div>

        <div class="stat-label">
          Minat Utama
        </div>

      </div>


      <div class="stat">

        <div class="stat-number">
          IX
        </div>

        <div class="stat-label">
          Kelas
        </div>

      </div>

    </div>

  </section>



  <!-- =========================
       SKILLS
  ========================= -->

  <section id="skills">

    <div class="section-title">

      <small>02 — Skills</small>

      <h2>Kemampuan</h2>

      <p>
        Beberapa bidang yang sedang saya
        kembangkan dan gunakan dalam berbagai
        proyek kreatif.
      </p>

    </div>


    <div class="skills">


      <div class="skill">

        <div class="skill-top">

          <span class="skill-name">
            Editing
          </span>

          <span class="skill-type">
            CREATIVE
          </span>

        </div>

        <div class="skill-bar">

          <div
            class="skill-fill"
            style="width: 88%">
          </div>

        </div>

      </div>


      <div class="skill">

        <div class="skill-top">

          <span class="skill-name">
            Fotografi
          </span>

          <span class="skill-type">
            VISUAL
          </span>

        </div>

        <div class="skill-bar">

          <div
            class="skill-fill"
            style="width: 84%">
          </div>

        </div>

      </div>


      <div class="skill">

        <div class="skill-top">

          <span class="skill-name">
            Design
          </span>

          <span class="skill-type">
            CREATIVE
          </span>

        </div>

        <div class="skill-bar">

          <div
            class="skill-fill"
            style="width: 86%">
          </div>

        </div>

      </div>


      <div class="skill">

        <div class="skill-top">

          <span class="skill-name">
            Creative Thinking
          </span>

          <span class="skill-type">
            PERSONAL
          </span>

        </div>

        <div class="skill-bar">

          <div
            class="skill-fill"
            style="width: 82%">
          </div>

        </div>

      </div>


    </div>

  </section>



  <!-- =========================
       INTERESTS
  ========================= -->

  <section>

    <div class="section-title">

      <small>03 — Interests</small>

      <h2>Hal yang Saya Sukai</h2>

    </div>


    <div class="interest-grid">


      <div class="interest">

        <div class="interest-icon">
          🎨
        </div>

        <h3>Design</h3>

        <p>
          Membuat dan mengembangkan berbagai
          konsep visual serta desain digital.
        </p>

      </div>


      <div class="interest">

        <div class="interest-icon">
          📷
        </div>

        <h3>Fotografi</h3>

        <p>
          Mengabadikan momen dan mengeksplorasi
          dunia visual melalui fotografi.
        </p>

      </div>


      <div class="interest">

        <div class="interest-icon">
          🏕️
        </div>

        <h3>Pramuka</h3>

        <p>
          Mengikuti kegiatan, latihan, dan
          berbagai kompetisi kepramukaan.
        </p>

      </div>


    </div>

  </section>



  <!-- =========================
       ACHIEVEMENTS
  ========================= -->

  <section id="achievements">

    <div class="section-title">

      <small>04 — Achievements</small>

      <h2>Prestasi</h2>

      <p>
        Beberapa pencapaian yang pernah diraih
        dalam berbagai kegiatan dan kompetisi.
      </p>

    </div>


    <div class="achievement-grid">


      <div class="achievement">

        <div class="achievement-number">
          01
        </div>

        <div>
          <h3>Juara 2 PBB ASACOM</h3>
          <p>
            Kompetisi Peraturan Baris-Berbaris.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          02
        </div>

        <div>
          <h3>Juara Harapan 3 Short Movie ASACOM</h3>
          <p>
            Kompetisi pembuatan film pendek.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          03
        </div>

        <div>
          <h3>Juara PBB Bergilir ASACOM</h3>
          <p>
            Pencapaian dalam kompetisi PBB.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          04
        </div>

        <div>
          <h3>Juara 3 PBB LGTP</h3>
          <p>
            Kompetisi Peraturan Baris-Berbaris.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          05
        </div>

        <div>
          <h3>Juara Harapan 1 Hiking LGTP</h3>
          <p>
            Kompetisi hiking dalam kegiatan LGTP.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          06
        </div>

        <div>
          <h3>Juara 3 PBB LT2</h3>
          <p>
            Pencapaian dalam kompetisi LT2.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          07
        </div>

        <div>
          <h3>Juara 1 Semaphore LT2</h3>
          <p>
            Pencapaian dalam bidang semaphore.
          </p>
        </div>

      </div>


      <div class="achievement">

        <div class="achievement-number">
          08
        </div>

        <div>
          <h3>Juara 1 Cerdas Cermat</h3>
          <p>
            Pencapaian dalam kompetisi cerdas cermat.
          </p>
        </div>

      </div>


    </div>

  </section>



  <!-- =========================
       PROJECT
  ========================= -->

  <section id="project">

    <div class="section-title">

      <small>05 — Project</small>

      <h2>Project yang Pernah Dibuat</h2>

    </div>


    <div class="project">


      <div class="project-box">

        <div class="project-symbol">
          ✦
        </div>

      </div>


      <div class="project-content">

        <h3>
          Desain Instagram
          Pramuka SMP N 36 Semarang
        </h3>

        <p>
          Salah satu project kreatif yang pernah
          saya kerjakan adalah membuat desain untuk
          akun Instagram Pramuka SMP N 36 Semarang.
        </p>

        <div class="tags">

          <span class="tag">
            Design
          </span>

          <span class="tag">
            Editing
          </span>

          <span class="tag">
            Social Media
          </span>

          <span class="tag">
            Pramuka
          </span>

        </div>

      </div>


    </div>

  </section>



  <!-- =========================
       ACTIVITIES
  ========================= -->

  <section>

    <div class="section-title">

      <small>06 — Activities</small>

      <h2>Kegiatan</h2>

      <p>
        Bidang kegiatan yang berkaitan dengan
        pengalaman dan pencapaian saya.
      </p>

    </div>


    <div class="activity-list">


      <div class="activity">

        <div class="activity-dot"></div>

        <div class="activity-content">

          <h3>Pramuka</h3>

          <p>
            Mengikuti berbagai kegiatan dan
            kompetisi kepramukaan.
          </p>

        </div>

      </div>


      <div class="activity">

        <div class="activity-dot"></div>

        <div class="activity-content">

          <h3>PBB & Semaphore</h3>

          <p>
            Mengembangkan kemampuan melalui
            latihan dan kompetisi.
          </p>

        </div>

      </div>


      <div class="activity">

        <div class="activity-dot"></div>

        <div class="activity-content">

          <h3>Hiking & Outdoor Activity</h3>

          <p>
            Mengikuti kegiatan hiking dan
            aktivitas luar ruangan.
          </p>

        </div>

      </div>


      <div class="activity">

        <div class="activity-dot"></div>

        <div class="activity-content">

          <h3>Design & Editing</h3>

          <p>
            Mengembangkan kemampuan kreatif
            melalui berbagai karya digital.
          </p>

        </div>

      </div>


    </div>

  </section>



  <!-- =========================
       IQ
  ========================= -->

  <section class="iq-section">

    <div class="section-title">

      <small>07 — Personal</small>

      <h2>Personal Insight</h2>

    </div>


    <div class="iq-card">

      <div class="iq-number">
        126
      </div>

      <h3>
        IQ yang Dilaporkan
      </h3>

      <p>
        Nilai IQ 126 dicantumkan berdasarkan
        informasi yang diberikan oleh pemilik
        portfolio dan bukan hasil verifikasi
        independen oleh website ini.
      </p>

    </div>

  </section>



  <!-- =========================
       CONTACT
  ========================= -->

  <section>

    <div class="contact">

      <small
        style="
        color:#00e5ff;
        letter-spacing:3px;
        text-transform:uppercase;
        ">
        08 — Contact
      </small>

      <h2>
        Let's Create Something.
      </h2>

      <p>
        Portfolio ini akan terus berkembang
        seiring bertambahnya pengalaman,
        karya, dan pencapaian.
      </p>

      <a
        href="#home"
        class="btn btn-primary">
        Kembali ke Atas ↑
      </a>

    </div>

  </section>



  <!-- =========================
       FOOTER
  ========================= -->

  <footer>

    <p>
      © 2026
      <strong>Firdza Azafa Dwi Permana</strong>.
      All Rights Reserved.
    </p>

    <p style="margin-top:6px;">
      Personal Portfolio • SMP N 36 Semarang
    </p>

  </footer>


</body>
</html>
