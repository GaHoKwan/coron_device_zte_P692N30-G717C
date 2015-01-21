.class final Lcom/nuance/dragon/toolkit/vocon/d$b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d;

.field private final b:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field private final c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field private final d:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

.field private e:Z

.field private final f:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->b:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-virtual {p3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-virtual {p3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b(Ljava/util/List;)V

    :cond_0
    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->d:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->b:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$b$3;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$b$3;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/vocon/d$b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->d:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->e:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Z)V
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->e:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$b$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$b;Z)V

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$b$2;

    invoke-direct {v1, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$b$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$b;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
