.class abstract Lcom/nuance/dragon/toolkit/vocalizer/b;
.super Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

.field private final b:Ljava/util/LinkedList;

.field private c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private j:Z

.field private k:Z

.field private final l:Landroid/os/Handler;

.field private final m:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;Landroid/os/Handler;)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->a:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    iput v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->d:I

    iput v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->e:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->f:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->g:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->h:I

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->l:Landroid/os/Handler;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getWorkerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->a:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generating TTS for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->b()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b$6;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocalizer/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/vocalizer/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a()V

    return-void
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/vocalizer/b;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cancelTts()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Canceling "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    if-nez v4, :cond_2

    :goto_1
    add-int v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TTS jobs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->a:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->b()V

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->cancel()V

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public generateTts(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
    .locals 13

    const-string v0, "param"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->j:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    const-string v1, "tts_input"

    invoke-virtual {p1, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v1

    iget-object v2, v1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const-string v1, "tts_type"

    invoke-virtual {p1, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const-string v3, "ssml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->d:I

    iget v5, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->e:I

    iget v6, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->f:I

    iget v7, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->h:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v8, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->h:I

    invoke-virtual {v1, v8}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v8

    iget v9, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->g:I

    new-instance v10, Lcom/nuance/dragon/toolkit/vocalizer/b$3;

    invoke-direct {v10, p0}, Lcom/nuance/dragon/toolkit/vocalizer/b$3;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b;)V

    move-object v1, p0

    move-object v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Ljava/lang/String;ZIIIIIILcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->c:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
    .locals 3

    const-string v0, "text"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v1, "tts_input"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tts_type"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/dragon/toolkit/vocalizer/b;->generateTts(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public final getAvailableLanguages(I)Ljava/util/List;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getAvailableModels(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->voice:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->voice:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAvailableModels()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getAvailableModels(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableModels(I)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->a:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;

    if-eqz p1, :cond_1

    iget v3, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->d:I

    if-ne p1, v3, :cond_0

    :cond_1
    iget-object v3, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->a(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;

    iget v5, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->d:I

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->c:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v0}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Language name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " doesn\'t match "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'s language "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find Vocalizer voice "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelJni;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_5
    const-string v0, "Unable to detect supported Vocalizer models"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public final getAvailableVoices(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getAvailableVoices(ILcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableVoices(ILcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)Ljava/util/List;
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->voices:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->getAvailableModels(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->voice:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    array-length v6, v1

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_2

    aget-object v7, v1, v0

    if-eqz v7, :cond_1

    invoke-virtual {v7, v5}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    return-object v3

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method protected abstract getWorkerThreadHandler()Landroid/os/Handler;
.end method

.method public load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V

    return-void
.end method

.method public load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V
    .locals 4

    const/16 v2, 0x5622

    const/4 v1, 0x1

    const-string v0, "config"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->j:Z

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget v0, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_1
    invoke-direct {v1, v3, v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->i:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocalizer/b$2;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x1f40

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x2b11

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x3e80

    goto :goto_1

    :sswitch_3
    move v0, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0x10 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method

.method public loadResource(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mimeType"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/vocalizer/b$4;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->release(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->cancelTts()V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/b$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->m:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocalizer/b$5;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudioChunkBufferCount(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->g:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_1
.end method

.method public setAudioChunkSize(I)V
    .locals 2

    const/16 v1, 0x14

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    iput p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->h:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTtsPitch(I)V
    .locals 3

    const/16 v2, 0xc8

    const/16 v1, 0x32

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    if-ge p1, v1, :cond_2

    move p1, v1

    :cond_0
    :goto_1
    iput p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->e:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-le p1, v2, :cond_0

    move p1, v2

    goto :goto_1
.end method

.method public setTtsSpeed(I)V
    .locals 3

    const/16 v2, 0x190

    const/16 v1, 0x32

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    if-ge p1, v1, :cond_2

    move p1, v1

    :cond_0
    :goto_1
    iput p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->d:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-le p1, v2, :cond_0

    move p1, v2

    goto :goto_1
.end method

.method public setTtsVolume(I)V
    .locals 3

    const/16 v2, 0x64

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    if-gez p1, :cond_1

    :goto_1
    iput v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b;->f:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-le p1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_1
.end method
