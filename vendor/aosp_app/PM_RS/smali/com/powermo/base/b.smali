.class public abstract Lcom/powermo/base/b;
.super Lcom/powermo/base/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Lcom/powermo/base/d;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MemoryRegistry"

    invoke-static {v0}, Lcom/powermo/base/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/base/b;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/powermo/base/g;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/powermo/base/b;->d:Lcom/powermo/base/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/base/b;->e:Z

    iput-object p1, p0, Lcom/powermo/base/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/powermo/base/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/powermo/base/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/powermo/base/d;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/base/b;->d:Lcom/powermo/base/d;

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/powermo/base/b;->k()V

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/powermo/base/b;->l()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/powermo/base/b;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/base/b;->e:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/base/b;->e:Z

    return v0
.end method

.method protected final declared-synchronized d()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/powermo/base/d;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/b;->d:Lcom/powermo/base/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    instance-of v2, p1, Lcom/powermo/base/b;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/powermo/base/b;

    :goto_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    iget-object v1, p1, Lcom/powermo/base/b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object p1, v1

    goto :goto_1
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/base/b;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
