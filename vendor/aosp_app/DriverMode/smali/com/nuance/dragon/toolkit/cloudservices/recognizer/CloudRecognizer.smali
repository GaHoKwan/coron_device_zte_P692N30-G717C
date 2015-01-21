.class public Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

.field private c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cloudServices"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    :cond_0
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public processResult()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "No recognition in progress"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "Already processing"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->d(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->e(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->finish()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public sendParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "No recognition in progress"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "Can\'t add params after already processing"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public startRecognition(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V
    .locals 6

    const-string v0, "recogSpec"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioSource"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultListener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->cancel()V

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;-><init>(B)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->getSettings()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v3

    new-instance v4, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;

    invoke-direct {v4, p0, v1, p1, p3}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->getTimeout()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;I)V

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-virtual {v0, p2}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    new-instance v2, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->getAudioParam()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/AudioParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    return-void
.end method
