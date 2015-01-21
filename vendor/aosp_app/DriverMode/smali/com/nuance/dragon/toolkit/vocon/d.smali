.class abstract Lcom/nuance/dragon/toolkit/vocon/d;
.super Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

.field private b:Lcom/nuance/dragon/toolkit/vocon/d$c;

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/Handler;

.field private h:Ljava/lang/String;

.field private i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field private j:Lcom/nuance/dragon/toolkit/vocon/d$b;

.field private k:Lcom/nuance/dragon/toolkit/vocon/d$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/NativeVocon;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->g:Landroid/os/Handler;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/d$b;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->getAvailableModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;->language:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;->sizeKb:I

    if-le v3, v1, :cond_1

    iget v1, v0, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;->sizeKb:I

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "vadvde"

    aput-object v0, v5, v2

    const/4 v0, 0x1

    const-string v1, "cfg1"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "cfg3"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "mpthree"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "mpthreevad"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "mpthreevadml"

    aput-object v1, v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b(Ljava/util/List;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/b;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/vocon/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    move v3, v2

    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_1

    aget-object v7, v5, v1

    iget-object v8, v0, Lcom/nuance/dragon/toolkit/vocon/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-le v3, v4, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    aget-object v0, v5, v4

    return-object v0

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/vocon/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/vocon/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->k:Lcom/nuance/dragon/toolkit/vocon/d$a;

    return-object v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/vocon/d;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    return v0
.end method


# virtual methods
.method protected abstract a()Landroid/os/Handler;
.end method

.method public cancelCompilation()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->k:Lcom/nuance/dragon/toolkit/vocon/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->k:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->k:Lcom/nuance/dragon/toolkit/vocon/d$a;

    :cond_0
    return-void
.end method

.method public cancelRebuild()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    :cond_0
    return-void
.end method

.method public cancelRecognition()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkWakeupPhrases(Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$WakeupCheckListener;)V
    .locals 2

    const-string v0, "wakeupPhrases"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wakeupCheckListener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/nuance/dragon/toolkit/vocon/d$5;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$WakeupCheckListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clean(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V
    .locals 1

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$11;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$11;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/nuance/dragon/toolkit/vocon/d;->clean(Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V

    return-void
.end method

.method public clean(Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V
    .locals 2

    const-string v0, "fileNames"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocon/d$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearGrammar(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$6;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$6;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compileContext(Ljava/util/List;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "entries"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "entries"

    const-string v4, "not empty"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "fileName"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "listener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelCompilation()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-direct {v0, p0, p3}, Lcom/nuance/dragon/toolkit/vocon/d$a;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->k:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->k:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/dragon/toolkit/vocon/d$a;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public enableVerboseAndroidLogging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Z)V

    return-void
.end method

.method public getAvailableModels()Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/util/List;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/c;

    iget v4, v0, Lcom/nuance/dragon/toolkit/vocon/c;->b:I

    sget-object v5, Lcom/nuance/dragon/toolkit/vocon/a;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    array-length v6, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    iget-object v8, v7, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;->name:Ljava/lang/String;

    iget-object v9, v0, Lcom/nuance/dragon/toolkit/vocon/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;

    invoke-direct {v8, v7, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;-><init>(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getAvailableModels(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->getAvailableModels()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/VoconModelInfo;->language:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public initialize(Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/vocon/d;->initialize(Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;)V

    return-void
.end method

.method public initialize(Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Already initialized"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "config"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/nuance/dragon/toolkit/vocon/d$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public loadGrammar(Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "grammar"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/nuance/dragon/toolkit/vocon/d$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public loadResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceLoadListener;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocon/d$9;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceLoadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public loadState(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/dragon/toolkit/vocon/d;->loadStateAndGrammar(Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    return-void
.end method

.method public loadStateAndGrammar(Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
    .locals 3

    const-string v0, "rebuildListener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/nuance/dragon/toolkit/vocon/d$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    :goto_1
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$8;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/nuance/dragon/toolkit/vocon/d$8;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;Lcom/nuance/dragon/toolkit/vocon/Grammar;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onApplicationLanguageChange(Ljava/lang/Object;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$3;

    invoke-direct {v0, p0, p2}, Lcom/nuance/dragon/toolkit/vocon/d$3;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d;->clearGrammar(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d;->release(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;)V

    return-void
.end method

.method public release(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d;->clearGrammar(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$4;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public releaseResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocon/d$10;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public saveState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d;->saveState(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;)V

    return-void
.end method

.method public saveState(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->i:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->f:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/nuance/dragon/toolkit/vocon/d$7;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;Lcom/nuance/dragon/toolkit/vocon/Grammar;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFuzzyMatchRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/vocon/VoconContext;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 7

    const/16 v6, 0x2710

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "activeContext"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->ACCURACY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAX_COLLAPSED_LISTSIZE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAX_NBR_UNCOLLAPSED_ENTRIES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/d;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void
.end method

.method public startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "audioSource"

    const-string v4, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "fxParams"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fxParams"

    const-string v4, "not empty"

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "activeContexts"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultListener"

    invoke-static {v0, p6}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-nez v0, :cond_4

    :goto_3
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/nuance/dragon/toolkit/vocon/d$c;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3
.end method

.method public startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/d;->startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void
.end method

.method public startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioSource"

    const-string v3, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v5

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "fxParams"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fxParams"

    const-string v3, "not empty"

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v5

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "wakeupPhrases"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wakeupPhrases"

    const-string v3, "not empty"

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v5

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "resultListener"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_5

    move v0, v5

    :goto_3
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-nez v0, :cond_1

    move v1, v5

    :cond_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-direct {v0, p0, p5, v6, v6}, Lcom/nuance/dragon/toolkit/vocon/d$c;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;IZ)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ILcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "silenceDurationMs"

    const-string v4, "> 0"

    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "speechDetectionListener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "A rebuild is in progress"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-direct {v1, p0, v5, p3, v5}, Lcom/nuance/dragon/toolkit/vocon/d$c;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/vocon/d;->startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    return-void
.end method

.method public startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 v0, 0x5dc

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/nuance/dragon/toolkit/vocon/d;->startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ILcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    return-void

    :cond_0
    const/16 v0, 0x384

    goto :goto_0
.end method

.method public startTimedRecognitionMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/vocon/VoconContext;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 7

    const/16 v5, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "activeContext"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/d;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void
.end method

.method public startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/d;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    return-void
.end method

.method public startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioSource"

    const-string v3, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "fxParams"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fxParams"

    const-string v3, "not empty"

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "wakeupPhrases"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wakeupPhrases"

    const-string v3, "not empty"

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "resultListener"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->j:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-nez v0, :cond_5

    :goto_4
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/d;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-direct {v0, p0, p5, v6, v6}, Lcom/nuance/dragon/toolkit/vocon/d$c;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;IZ)V

    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4
.end method

.method public stopListening()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d;->b:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
