.class final Lcom/nuance/dragon/toolkit/vocon/d$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d;

.field private final b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/vocon/d$a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/vocon/d$a;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->c:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->c:Z

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

.method final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->c:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    invoke-direct {v5, p0, v4, p2}, Lcom/nuance/dragon/toolkit/vocon/d$a$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/d$a$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$a;Ljava/util/List;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v6, Lcom/nuance/dragon/toolkit/vocon/d$a$3;

    move-object v7, p0

    move-object v8, p2

    move-object v9, v4

    move-object v10, v0

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/nuance/dragon/toolkit/vocon/d$a$3;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
