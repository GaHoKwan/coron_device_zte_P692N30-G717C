.class final Lcom/nuance/dragon/toolkit/util/internal/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/util/internal/c;

.field private b:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/internal/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Blocking iterators don\'t support add"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->a(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->b(Lcom/nuance/dragon/toolkit/util/internal/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/util/internal/c;->c(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->a(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->b(Lcom/nuance/dragon/toolkit/util/internal/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/util/internal/c;->c(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->c(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->a(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->c(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->a(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->a:Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/c;->c(Lcom/nuance/dragon/toolkit/util/internal/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/util/internal/c$a;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Blocking iterators don\'t support remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Blocking iterators don\'t support set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
