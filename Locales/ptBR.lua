local L = BigWigsAPI:NewLocale("BigWigs", "ptBR")
if not L then return end

--L.getNewRelease = "Your BigWigs is old (/bwv) but you can easily update it using the Curse Client. Alternatively, you can update manually from curse.com or wowinterface.com."
--L.warnTwoReleases = "Your BigWigs is 2 releases out of date! Your version may have bugs, missing features, or completely incorrect timers. It is strongly recommended you update."
--L.warnSeveralReleases = "|cffff0000Your BigWigs is several releases out of date!! We HIGHLY recommend you update to prevent syncing issues with other players!|r"

--L.gitHubTitle = "BigWigs is on GitHub"
--L.gitHubDesc = "BigWigs is open source software hosted on GitHub. We are always looking for new people to help us out and everyone is welcome to inspect our code, make contributions and submit bug reports. BigWigs is as great as it is today largely in part to the great WoW community helping us out.\n\n|cFF33FF99Our API is now documented and freely readable on the GitHub wiki.|r"

--L.options = "Options"
L.raidBosses = "Chefes de Raid"
L.dungeonBosses = "Chefes de Masmorras"

--L.infobox = "Information Box"
--L.infobox_desc = "Display a box with information related to the encounter."
--L.INFOBOX = L.infobox
--L.INFOBOX_desc = L.infobox_desc

--L.disabledAddOn = "You have the |cFF436EEE%s|r addon disabled, timers will not be shown."

-- Core.lua
L.berserk = "Frenesi"
L.berserk_desc = "Mostra uma barra e o aviso temporizado para quando o chefe entrar em Frenesi."
L.altpower = "Alterar como o poder é mostrado."
L.altpower_desc = "Mostra a janela alternativa de poder, cada uma mostra o quanto de alteração de poder os seus membros do grupo tem."
L.stages = "Estágios"
L.stages_desc = "Ativa funções relacionadas a vários estágios/fases do chefe, como proximidade, barras, etc."
L.warmup = "Preparar"
L.warmup_desc = "Tempo até o combate com o chefe começar."

L.already_registered = "|cffff0000Atenção:|r |cff00ff00%s|r (|cffffff00%s|r) já existe como um módulo do BigWigs, mas as vezes ele tenta registra-lo novamente. Isso normalmente significa que você tem duas cópias deste módulo na sua pasta de addOns devido a alguma falha ao atualizar um addOn. É recomendado que você delete qualquer pasta do BigWigs existente e reinstale novamente."
-- Loader / Options.lua
L.officialRelease = "Você está executando uma versão oficial do BigWigs %s (%s)"
L.alphaRelease = "Você está rodando uma versão ALPHA do BigWigs %s (%s)"
L.sourceCheckout = "Você está rodando uma verificação de código do BigWigs %s diretamente do repositório."
L.getNewRelease = "Seu BigWigs está desatualizado (/bwv) mas você pode facilmente atualizar ele usando o Curse Client. Alternativamente, você pode atualizar manualmente em curse.com ou wowinterface.com."
L.warnTwoReleases = "Seu BigWigs está 2 versões desatualizado! Sua versão provavelmente contem bugs, perde novas funções, ou os temporizadoress estão completamente incorretos. É extremamente recomendado uma atualização."
L.warnSeveralReleases = "|cffff0000Seu BigWigs está várias versões desatualizado!! Nós EXTREMAMENTE recomendamos fazer a atualização para prevenir problemas de sincronização com outros jogadores!|r"

L.tooltipHint = "|cffeda55fClick|r para resetar todos os módulos rodando.\n|cffeda55fAlt-Click|r para desativá-los.\n|cffeda55fRight-Click|r para acessar as opções."
L.activeBossModules = "Módulos de chefes ativos:"
L.modulesReset = "Todos os módulos rodando foram resetados."
L.modulesDisabled = "Todos os módulos rodando foram desativados."

L.oldVersionsInGroup = "Existem pessoas no seu grupo com uma versão antiga ou sem o BigWigs. Você pode ver mais detalhes com /bwv."
L.upToDate = "Atualizado:"
L.outOfDate = "Desatualizado:"
L.dbmUsers = "Usuários do DBM:"
L.noBossMod = "Sem mod de chefes:"
L.offline = "Desconectado"

L.blizzRestrictionsZone = "Esperando até o combate terminar para carregar, devido algumas restrições de combate da Blizzard."
L.finishedLoading = "Combate terminou, BigWigs acabou de carregar."
L.blizzRestrictionsConfig = "Devido as restrições de configuração da Blizzard, precisa primeiramente ser aberto fora de combate antes de poder ser acessado em combate."
L.missingAddOn = "Por favor, note que esta zona requer o |cFF436EEE%s|r plugin para os temporizadores serem mostrados."
L.coreAddonDisabled = "BigWigs não irá funcionar corretamente sendo que o addOn %s está desativado. Você pode ativa-lo pelo painel de controle de addOn na aba de seleção de personagem."
L.removeAddon = "Por favor remova '|cFF436EEE%s|r' desde que este será trocado por '|cFF436EEE%s|r'."

-- Options.lua
L.options = "Opções"
L.raidBosses = "Chefes de Raid"
L.dungeonBosses = "Chefes de Masmorras"
L.introduction = "Bem vindo ao BigWigs, onde os encontros com chefes vagueiam. Por favor, aperte o cinto, coma um amendoim e desfrute do passeio. Ele não vai comer os seus filhos, mas vai ajudá-lo a se preparar a esse novo encontro com o chefe como um jantar de 7 pratos para o seu grupo de raid."
L.toggleAnchorsBtn = "Alterar Âncoras"
L.toggleAnchorsBtn_desc = "Alterar entre mostrar ou ocultar todas as âncoras."
L.testBarsBtn = "Criar Barra de Teste"
L.testBarsBtn_desc = "Criar uma barra para você testar suas configurações de amostragem atuais"
L.sound = "Som"
L.flashScreen = "Piscar o tela"
L.flashScreenDesc = "Certas habilidades são importantes o suficiente para precisar de atenção total. Quando essas habilidades afetam você, BigWigs pode piscar a tela."
L.minimapIcon = "Ícone do Minimapa"
L.minimapToggle = "Altera mostrar/ocultar o ícone do mini-mapa."
L.configure = "Configurar"
L.test = "Teste"
L.resetPositions = "Resetar posições"
L.colors = "Cores"
L.selectEncounter = "Selecionar Encontro"
L.listAbilities = "Listar habilidades no chat do grupo"

L.dbmFaker = "Faz de conta que eu estou usando DBM"
L.dbmFakerDesc = "Se um usuário do DBM tem uma versão que verifica quem está usando DBM, ele irá vê-lo na lista. Útil para guilds que forçam usar o DBM."
L.chatMessages = "Quadro do chat de mensagens"
L.chatMessagesDesc = "Mostra todas as mensagens no quadro de chat padrão, além da configuração de exibição."
L.zoneMessages = "Mostrar mensagens da zona atual"
L.zoneMessagesDesc = "Desativar isso irá parar de mostrar mensagens quando você entra em uma zona que BigWigs possui temporizadores, mas você não o tem instalado. Nós recomendamos que você deixe isto ligado, pois é a única notificação que você vai receber se de repente nós criarmos temporizadores para uma nova zona que você ache útil."
L.slashDescTitle = "|cFFFED000Comandos Slash:|r"
L.slashDescPull = "|cFFFED000/pull:|r Envia uma contagem regressiva do pull para a raid."
L.slashDescBreak = "|cFFFED000/break:|r Envia uma pausa dos temporizadores para a raid."
L.slashDescRaidBar = "|cFFFED000/raidbar:|r Envia uma barra personalizada para a raid."
L.slashDescLocalBar = "|cFFFED000/localbar:|r Cria uma barra personalizada que apenas você pode ver."
L.slashDescRange = "|cFFFED000/range:|r Abre o indicador de distância."
L.slashDescVersion = "|cFFFED000/bwv:|r Realiza uma verificação da versão do BigWigs."
L.slashDescConfig = "|cFFFED000/bw:|r Abre a configuração do BigWigs."

L.gitHubTitle = "BigWigs está no GitHub"
L.gitHubDesc = "BigWiggs é um software de código aberto hospedado no GitHub. Nós sempre estamos procurando por novas pessoas para ajudar-nos e todos são bem vindos para dar uma olhada no nosso código, fazer contribuições e  reportar erros. BigWigs é incrível como é hoje sua maioria das vezes devido a toda comunidade do WoW que nos ajuda.\n\n|cFF33FF99Nossa API é agora documentada e livremente legível na wiki no GitHub.|r"

L.BAR = "Barras"
L.MESSAGE = "Mensagens"
L.ICON = "Icone"
L.SAY = "Falar"
L.FLASH = "Piscar"
L.EMPHASIZE = "Enfatizar"
L.ME_ONLY = "Apenas quando em mim"
L.ME_ONLY_desc = "Quando você ativar esta mensagem de opção para esta habilidade, somente será mostrado quando elas afetarem você, por exemplo. 'Bomba: Jogador' só será mostrado se for em você."
L.PULSE = "Pulso"
L.PULSE_desc = "Além de piscar na tela, você também pode ter um ícone relacionado com esta habilidade específica momentaneamente, exibido no centro do ecrã, para tentar chamar a sua atenção."
L.MESSAGE_desc = "A maioria das habilidades de encontro veem com uma ou mais mensagens que BigWigs irá mostrar na tela. Se você desativar esta opção, nenhuma das mensagens anexadas a esta opção, se houver, será exibido."
L.BAR_desc = "Barras são mostrados para algumas habilidades de encontro quando apropriadas. Se essa habilidade é acompanhada por uma barra que você deseja ocultar, desabilite esta opção."
L.FLASH_desc = "Algumas habilidades podem ser mais importantes do que outras. Se você quiser que o seu ecrã pisque quando essa habilidade é iminente ou usado, marque esta opção."
L.ICON_desc = "BigWigs pode marcar os personagens afetados pelas habilidades com um ícone. Isso os torna mais fáceis de detectar."
L.SAY_desc = "Bolhas de bate-papo são fáceis de detectar. BigWigs usará uma mensagem de fala para anunciar as pessoas próximas sobre um efeito em você."
L.EMPHASIZE_desc = "A activação desta vai enfatizar todas as mensagens associadas a esta habilidade, tornando-os maiores e mais visíveis. É possível definir o tamanho e fonte das mensagens enfatizados nas opções principais em \"Mensagens\"."
L.PROXIMITY = "Exibição de Proximidade"
L.PROXIMITY_desc = "Habilidades, por vezes, vai exigir que você se espalhe. O visor de proximidade será criado especificamente para essa habilidade de modo que você será capaz de notar se ou não você está seguro."
L.ALTPOWER = "Exibição de Poder Alternativo"
L.ALTPOWER_desc = "Alguns encontros usarão a mecânica de poder alternativo em jogadores em seu grupo. O visor de poder alternativo fornece uma visão geral de quem tem o menor / maior poder, que pode ser útil para táticas ou atribuições específicas."
L.TANK = "Apenas Tank"
L.TANK_desc = "Algumas habilidades são importantes apenas para os tanks. Se você quiser ver avisos para essa capacidade, independentemente do seu papel, desative esta opção."
L.HEALER = "Apenas Healer"
L.HEALER_desc = "Algumas habilidades são importantes apenas para os healers. Se você quiser ver avisos para essa capacidade, independentemente do seu papel, desative esta opção."
L.TANK_HEALER = "Apenas Tank e Healer"
L.TANK_HEALER_desc = "Algumas habilidades são importantes apenas para os tanks e healers. Se você quiser ver avisos para essa capacidade, independentemente do seu papel, desative esta opção."
L.DISPEL = "Apenas Dispellers"
L.DISPEL_desc = "Se você quiser ver avisos para essa capacidade, mesmo quando você não pode dissipar-lo, desative esta opção."
L.VOICE = "Voz"
L.VOICE_desc = "Se você tem um plugin de voz instalado, esta opção lhe permitirá reproduzir um arquivo de som que fala este aviso em voz alta para você."
L.COUNTDOWN = "Contagem Regressiva"
L.COUNTDOWN_desc = "Se ativado, uma contagem regressiva sonora e visual será adicionado para os últimos 5 segundos. Imagine alguém contando regressivamente 5... 4... 3... 2... 1... com um número grande no meio da tela."
L.advanced = "Opções Avançadas"
L.back = "<< Voltar"
L.tank = "|cFFFF0000Alertas para Tank apenas.|r "
L.healer = "|cFFFF0000Alertas para Healer apenas.|r "
L.tankhealer = "|cFFFF0000Alertas para Tank e Healer.|r "
L.dispeller = "|cFFFF0000Alerta para Dispellers apenas.|r "

-- Statistics
L.statistics = "Estatísticas"
L.norm25 = "25"
L.heroic25 = "25h"
L.norm10 = "10"
L.heroic10 = "10h"
L.lfr = "LFR"
L.flex = "Flex"
L.normal = "Normal"
L.heroic = "Heroico"
L.mythic = "Mítico"
L.wipes = "Wipes:"
L.kills = "Mortes:"
L.best = "Melhor:"
