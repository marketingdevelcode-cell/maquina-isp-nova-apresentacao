# Apresentação Máquina.ISP — guia rápido do evento

## Como abrir

**Dê dois cliques em `Abrir apresentação.bat`.**

Ele sobe um servidor local e abre a apresentação no navegador.
Deixe a janela preta aberta durante todo o evento — ela é o servidor.

**Apresentar e salvar leads não precisa de internet.** Só o envio ao agente de
WhatsApp precisa — e, se a internet cair, o lead fica guardado e o envio sai
sozinho quando ela voltar (veja "O agente chama o lead").

Ao terminar: exporte a planilha de leads e só então feche a janela preta.

> **Use sempre o mesmo modo de abertura durante todo o evento.**
> O navegador guarda os leads amarrados ao endereço de onde a página veio. Abrir
> pelo atalho (`localhost:8777`) e depois abrir o `index.html` direto são, para o
> navegador, dois lugares diferentes — os leads salvos num não aparecem no outro.
> Eles não são apagados, só ficam invisíveis até você voltar pelo mesmo caminho.

## Os leads sobrevivem a desligar o computador?

**Sim.** O navegador grava em disco, não só na memória. Pode desligar, viajar e
ligar no dia seguinte que os leads continuam lá — desde que você reabra:

- no **mesmo computador**, com o **mesmo usuário do Windows**;
- no **mesmo navegador** (se salvou no Edge, reabra no Edge);
- pelo **mesmo caminho** — ou sempre o atalho, ou sempre o arquivo direto;
- em janela **normal**, nunca anônima/InPrivate.

O que apaga os leads: limpar dados de navegação do site, usar janela anônima,
ou o botão "Apagar tudo" dentro do formulário.

Mesmo assim, **exporte a planilha ao final de cada dia.** O arquivo `.xlsx` é a
sua cópia de segurança de verdade — ele não depende de nada disso.

## Captação de leads (em 2 etapas)

| Ação | Como |
|---|---|
| Abrir o formulário | Tecla **L** ou o botão 👤+ no topo direito |
| Avançar / salvar | Botão do formulário ou **Ctrl + Enter** |
| Ver os leads capturados | Aba **Leads capturados** dentro do formulário |
| Fechar o formulário | Tecla **Esc** ou o ✕ |

O formulário abre por cima de qualquer slide e, ao fechar, você volta exatamente
onde estava.

### Etapa 1 — Contato (é o que aciona o agente)

1. **Quem está captando este lead?** Escolha o seu nome. Ele fica lembrado para
   os próximos leads, e é o nome que o agente cita ao lead ("foi o Wesley quem
   pediu pra eu te chamar").
2. **Nome** e **Celular (WhatsApp)** — obrigatórios. O celular precisa ter DDD e
   começar com 9: `(00) 90000-0000`. **E-mail** é opcional.
3. Marque **"O lead autorizou receber contato da Máquina.ISP por WhatsApp"**.
   Pergunte a ele antes. Sem isso o agente não é acionado — o WhatsApp exige o
   consentimento de quem recebe mensagem de uma empresa.
4. Clique em **Chamar no WhatsApp**. Uma tela mostra o número em letras grandes:
   **confira com o lead** e confirme. Um número digitado errado mandaria a mensagem
   para um desconhecido.

### Etapa 2 — Provedor (opcional)

Logo depois da confirmação, abre a etapa 2: provedor, cidade, UF, nº de assinantes,
sistema/ERP e observações. **O agente já foi acionado** — estes dados só completam
o cadastro, e o agente usa provedor, porte e ERP na conversa para não perguntar de
novo. As **observações** são só da equipe: o agente **não** as vê.

Ao digitar o número de assinantes, a faixa de preço aparece sozinha — é a mesma
tabela da calculadora da apresentação.

Não deu tempo? Clique em **Pular, novo lead** e complete depois: na aba
**Leads capturados**, o lápis ✏️ da linha reabre a etapa 2 daquele lead.

## O agente chama o lead

Ao confirmar a etapa 1, o lead é salvo **neste computador primeiro** e só depois
enviado ao agente, que:

1. cria o cadastro no CRM (origem *Feiras e Eventos*), com uma tarefa dizendo quem
   captou;
2. manda a primeira mensagem no WhatsApp, pelo número da Máquina.ISP, dizendo que
   foi o seu nome quem pediu o contato;
3. continua a conversa quando o lead responder, e a consultora assume dali.

### O que cada status significa (coluna "Agente")

| Status | O que é | O que fazer |
|---|---|---|
| **WhatsApp enviado** | Tudo certo | Nada |
| **Na fila** | Sem internet, ou o servidor está acordando (pode levar ~1 min) | Nada: sai sozinho |
| **Salvo · envio não liberado** | O lead e o cadastro existem, mas a mensagem ainda não foi liberada | Nada agora. Depois, **Reenviar pendentes** |
| **Confira no WhatsApp** | O envio deu timeout e a mensagem **pode** ter chegado | Veja no WhatsApp do lead. Só clique em ↻ se **não** chegou — senão duplica |
| **Falhou** | O WhatsApp recusou após várias tentativas | Clique em ↻ na linha, ou **Reenviar pendentes** |
| **Número já chamado** | Esse número já recebeu a mensagem neste evento | Nada |
| **Recusado** | Dado inválido ou fora do período do evento | Leia o motivo na linha |
| **Somente local** | Lead de antes desta versão, nunca enviado ao agente | Nada |

O lead **nunca se perde** por causa do envio: mesmo em "Falhou" ou "Recusado" ele
continua na lista e na planilha.

### Limites de segurança

- O agente só aceita leads **durante o período do evento** (configurado no
  servidor). Fora dele, o lead fica só neste computador e um aviso aparece no topo
  do formulário.
- A lista de responsáveis vem do servidor. Para incluir ou tirar alguém, é só
  mudar a configuração `EVENTO_VENDEDORES` lá — não precisa mexer nesta página.

### O contador no botão

- **Bolinha azul** — todos os leads já foram exportados.
- **Bolinha amarela** — há leads ainda **não exportados**.

Se você tentar fechar a aba com leads não exportados **ou ainda na fila de envio**,
o navegador avisa.

## Exportar a planilha

Na aba **Leads capturados**:

- **Exportar Excel (.xlsx)** — arquivo pronto para o Excel, com filtro nas colunas
  e o número de assinantes como número de verdade (dá para ordenar e somar).
- **Exportar CSV** — backup, já no padrão brasileiro (`;` e acentuação correta).

Os arquivos caem na pasta de Downloads, com data e hora no nome:
`leads-maquina-isp_2026-11-05_1830.xlsx`

**Exporte pelo menos uma vez ao final de cada dia.** Os dados ficam guardados no
navegador deste computador; limpar os dados de navegação apaga tudo.

## Colunas da planilha

Data/Hora · Nome · WhatsApp · E-mail · Provedor · Cidade · UF · Assinantes ·
Faixa de preço · Sistema/ERP · Observações · Captado por · WhatsApp (agente)

## Atalhos da apresentação

| Tecla | Ação |
|---|---|
| ← → / Espaço | Navegar entre slides |
| **L** | Formulário de leads |
| **F** | Tela cheia |
| **M** | Mapa dos slides |
| **O** | Ocultar/mostrar o slide atual |
| **Esc** | Fechar o que estiver aberto |

Digitar dentro de um campo não navega mais os slides.

## Pastas

- `vendor/` — fontes, ícones, GSAP e a biblioteca de Excel, todos locais.
  **Não apague**: sem essa pasta a apresentação perde tipografia, ícones e animações.
- `.claude/launch.json` — configuração de servidor local para desenvolvimento.

## Para quem mantém (técnico)

O envio ao agente fala com `https://dashboard-com-api.onrender.com/eventos`
(constante `AGENTE_API` no início do bloco de leads do `index.html`). Os endpoints
vivem no repositório do dashboard: `api/routes/eventos.py` e `whatsapp/evento.py`.
Cada lead tem um `clientId` único, e o servidor é idempotente por ele — reenviar
nunca duplica cadastro nem mensagem.
