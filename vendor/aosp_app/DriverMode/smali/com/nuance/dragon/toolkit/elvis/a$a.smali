.class final Lcom/nuance/dragon/toolkit/elvis/a$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a;

.field private final b:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field private final c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field private final d:Ljava/util/ArrayList;

.field private final e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

.field private f:Z

.field private final g:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {p3}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {p3}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->a(Ljava/util/List;)V

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->b:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$a$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$a$4;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->b:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->f:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->f:Z

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
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->f:Z

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$a$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$a;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$a$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a$2;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$a;ZLjava/lang/Runnable;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$a$3;

    invoke-direct {v1, p0, v0, v2}, Lcom/nuance/dragon/toolkit/elvis/a$a$3;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$a;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
