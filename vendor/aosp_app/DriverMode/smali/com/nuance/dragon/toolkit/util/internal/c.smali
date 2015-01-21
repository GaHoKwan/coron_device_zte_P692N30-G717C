.class public final Lcom/nuance/dragon/toolkit/util/internal/c;
.super Ljava/util/AbstractList;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/lang/Object;

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    iput p1, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->c:I

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/util/internal/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/c$a;-><init>(Lcom/nuance/dragon/toolkit/util/internal/c;I)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/c$a;-><init>(Lcom/nuance/dragon/toolkit/util/internal/c;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/c$a;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/util/internal/c$a;-><init>(Lcom/nuance/dragon/toolkit/util/internal/c;I)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c;->c:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
