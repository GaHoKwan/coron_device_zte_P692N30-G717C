.class public final Lcom/powermo/base/a/i;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/powermo/base/a/i;


# instance fields
.field private a:I

.field private b:Lcom/powermo/base/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powermo/base/a/i;

    invoke-direct {v0}, Lcom/powermo/base/a/i;-><init>()V

    sput-object v0, Lcom/powermo/base/a/i;->c:Lcom/powermo/base/a/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/base/a/i;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/powermo/base/a/i;->c:Lcom/powermo/base/a/i;

    invoke-direct {v0}, Lcom/powermo/base/a/i;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/powermo/base/a/i;->c:Lcom/powermo/base/a/i;

    invoke-direct {v0, p0}, Lcom/powermo/base/a/i;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Lcom/powermo/base/i;
    .locals 1

    sget-object v0, Lcom/powermo/base/a/i;->c:Lcom/powermo/base/a/i;

    invoke-direct {v0}, Lcom/powermo/base/a/i;->d()Lcom/powermo/base/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/powermo/base/a/j;

    invoke-direct {v0}, Lcom/powermo/base/a/j;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/powermo/base/a/i;->a:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/powermo/base/a/b;

    invoke-direct {v0}, Lcom/powermo/base/a/b;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    iget-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    invoke-virtual {v0}, Lcom/powermo/base/a/b;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/powermo/base/a/a;

    invoke-direct {v1, p1}, Lcom/powermo/base/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/powermo/base/a/h;

    invoke-direct {v1, p1}, Lcom/powermo/base/a/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/powermo/base/a/k;

    invoke-direct {v1}, Lcom/powermo/base/a/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/d;

    iget-object v2, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    invoke-virtual {v2, v0}, Lcom/powermo/base/a/b;->a(Lcom/powermo/base/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/powermo/base/a/i;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powermo/base/a/i;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/powermo/base/a/i;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    invoke-virtual {v0}, Lcom/powermo/base/a/b;->a()V

    iget-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    invoke-virtual {v0}, Lcom/powermo/base/a/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;

    :cond_0
    iget v0, p0, Lcom/powermo/base/a/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/powermo/base/a/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/powermo/base/a/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/i;->b:Lcom/powermo/base/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
