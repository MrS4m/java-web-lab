<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LAB DEVOPS | Java Web</title>
    <style>
        :root {
            color-scheme: dark;
            --bg: #0b1020;
            --panel: #141c31;
            --text: #edf2ff;
            --muted: #a6b2cc;
            --blue: #6488ff;
            --mint: #64e3c0;
            --border: rgba(255,255,255,.10);
        }

        * { box-sizing: border-box; }

        body {
            margin: 0;
            min-height: 100vh;
            color: var(--text);
            background:
                radial-gradient(ellipse at 80% 0%, #25356b 0, transparent 36%),
                var(--bg);
            font-family: Inter, "Segoe UI", Arial, sans-serif;
            line-height: 1.6;
        }

        .container {
            width: min(1080px, calc(100% - 40px));
            margin: auto;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            padding: 26px 0;
            border-bottom: 1px solid var(--border);
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 800;
            letter-spacing: 1.5px;
        }

        .logo {
            display: grid;
            place-items: center;
            width: 42px;
            height: 42px;
            border-radius: 13px;
            background: linear-gradient(135deg, var(--blue), #9b75ff);
            font-size: 22px;
        }

        .status {
            padding: 7px 12px;
            border: 1px solid rgba(100,227,192,.3);
            border-radius: 99px;
            color: var(--mint);
            background: rgba(100,227,192,.08);
            font-size: 12px;
            font-weight: 700;
            letter-spacing: .7px;
        }

        main { padding: 76px 0 60px; }

        .eyebrow {
            color: var(--mint);
            font-size: 12px;
            font-weight: 800;
            letter-spacing: 2px;
        }

        h1 {
            max-width: 760px;
            margin: 15px 0;
            font-size: clamp(38px, 6vw, 66px);
            line-height: 1.08;
            letter-spacing: -2px;
        }

        h1 span {
            color: var(--blue);
        }

        .intro {
            max-width: 650px;
            color: var(--muted);
            font-size: 18px;
        }

        .actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            margin: 30px 0 55px;
        }

        .button {
            display: inline-block;
            padding: 12px 19px;
            border: 1px solid var(--border);
            border-radius: 10px;
            color: var(--text);
            text-decoration: none;
            font-weight: 700;
            transition: transform .2s, border-color .2s;
        }

        .button:hover {
            transform: translateY(-2px);
            border-color: var(--blue);
        }

        .button.primary {
            border-color: var(--blue);
            background: var(--blue);
            color: #fff;
        }

        .section-title {
            margin-bottom: 20px;
            font-size: 22px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 18px;
        }

        .card {
            padding: 24px;
            border: 1px solid var(--border);
            border-radius: 17px;
            background: linear-gradient(145deg, rgba(255,255,255,.055), rgba(255,255,255,.018));
        }

        .card-icon {
            display: grid;
            place-items: center;
            width: 45px;
            height: 45px;
            margin-bottom: 18px;
            border-radius: 13px;
            background: rgba(100,136,255,.14);
            font-size: 22px;
        }

        .card h3 { margin: 0 0 7px; }
        .card p { margin: 0; color: var(--muted); font-size: 14px; }

        .note {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 24px;
            padding: 17px 20px;
            border: 1px solid var(--border);
            border-radius: 13px;
            color: var(--muted);
        }

        .dot {
            width: 9px;
            height: 9px;
            flex-shrink: 0;
            border-radius: 50%;
            background: var(--mint);
            box-shadow: 0 0 14px var(--mint);
        }

        footer {
            padding: 24px 0;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 13px;
        }

        @media (max-width: 700px) {
            header { align-items: flex-start; }
            .status { font-size: 10px; }
            main { padding-top: 50px; }
            .cards { grid-template-columns: 1fr; }
            h1 { letter-spacing: -1px; }
        }
    </style>
</head>
<body>
    <header class="container">
        <div class="brand">
            <div class="logo">⌘</div>
            <div>LAB DEVOPS</div>
        </div>
        <div class="status">● AMBIENTE DE TESTE</div>
    </header>

    <main class="container">
        <div class="eyebrow">NOSSO LABORATÓRIO DE APRENDIZADO</div>

        <h1>Construindo.<br>Testando. <span>Evoluindo.</span></h1>

        <p class="intro">
            Uma pequena aplicação para praticar Java, Maven e Jenkins.
            Cada alteração é uma oportunidade de aprender e melhorar
            nosso processo de entrega.
        </p>

        <div class="actions">
            <a class="button primary" href="#projeto">Conhecer o projeto →</a>
            <a class="button" href="#status">Status do laboratório</a>
        </div>

        <section id="projeto">
            <h2 class="section-title">O que estamos praticando</h2>

            <div class="cards">
                <article class="card">
                    <div class="card-icon">☕</div>
                    <h3>Java Web</h3>
                    <p>Uma aplicação Java com Servlet e JSP, empacotada em WAR.</p>
                </article>

                <article class="card">
                    <div class="card-icon">⚙️</div>
                    <h3>CI com Jenkins</h3>
                    <p>Build Maven, testes automatizados e validação do artefato.</p>
                </article>

                <article class="card">
                    <div class="card-icon">🚀</div>
                    <h3>Deploy seguro</h3>
                    <p>Validar em homologação antes de promover uma versão para produção.</p>
                </article>
            </div>
        </section>

        <div class="note" id="status">
            <span class="dot"></span>
            <span><strong>Laboratório em evolução.</strong>
            Próximo objetivo: publicar nossa aplicação em homologação.</span>
        </div>
    </main>

    <footer>
        <div class="container">
            Feito para aprender · Java + Maven + Jenkins
        </div>
    </footer>
</body>
</html>
