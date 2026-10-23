# Apresentação Máquina.ISP — guia rápido do evento

## Como abrir

**Dê dois cliques em `Abrir apresentação.bat`.**

Ele sobe um servidor local, abre a apresentação no navegador e **não usa internet**.
Deixe a janela preta aberta durante todo o evento — ela é o servidor.

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

## Captação de leads

| Ação | Como |
|---|---|
| Abrir o formulário | Tecla **L** ou o botão 👤+ no topo direito |
| Salvar o lead | Botão **Salvar lead** ou **Ctrl + Enter** |
| Ver os leads capturados | Aba **Leads capturados** dentro do formulário |
| Fechar o formulário | Tecla **Esc** ou o ✕ |

O formulário abre por cima de qualquer slide e, ao fechar, você volta exatamente
onde estava. Obrigatórios: **nome, provedor e WhatsApp**.

Ao digitar o número de assinantes, a faixa de preço aparece sozinha — é a mesma
tabela da calculadora da apresentação.

### O contador no botão

- **Bolinha azul** — todos os leads já foram exportados.
- **Bolinha amarela** — há leads ainda **não exportados**.

Se você tentar fechar a aba com leads não exportados, o navegador avisa.

## Exportar a planilha

Na aba **Leads capturados**:

- **Exportar Excel (.xlsx)** — arquivo pronto para o Excel, com filtro nas colunas
  e o número de assinantes como número de verdade (dá para ordenar e somar).
- **Exportar CSV** — backup, já no padrão brasileiro (`;` e acentuação correta).

Os arquivos caem na pasta de Downloads, com data e hora no nome:
`leads-maquina-isp_2026-10-23_1830.xlsx`

**Exporte pelo menos uma vez ao final de cada dia.** Os dados ficam guardados no
navegador deste computador; limpar os dados de navegação apaga tudo.

## Colunas da planilha

Data/Hora · Nome · WhatsApp · E-mail · Provedor · Cidade · UF · Assinantes ·
Faixa de preço · Sistema/ERP · Observações

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
