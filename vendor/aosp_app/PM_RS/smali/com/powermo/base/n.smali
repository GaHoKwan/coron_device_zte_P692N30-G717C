.class public Lcom/powermo/base/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/powermo/base/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/powermo/base/m;->b()Lcom/powermo/base/i;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;
    :try_end_0
    .catch Lcom/powermo/base/a/j; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/powermo/base/a/j;->printStackTrace()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Lcom/powermo/base/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/powermo/base/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    invoke-interface {v0, p1}, Lcom/powermo/base/i;->a(Ljava/lang/String;)Lcom/powermo/base/b;

    move-result-object v0

    :try_start_0
    check-cast v0, Lcom/powermo/base/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/powermo/base/e;->g()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/powermo/base/c;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/powermo/base/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    invoke-interface {v0, p1, p2}, Lcom/powermo/base/i;->a(Ljava/lang/String;Lcom/powermo/base/h;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/powermo/base/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/powermo/base/e;

    invoke-direct {v0, p1}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    invoke-interface {v1, v0, p3}, Lcom/powermo/base/i;->a(Lcom/powermo/base/b;Z)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/powermo/base/c;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/powermo/base/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/base/n;->a:Lcom/powermo/base/i;

    invoke-interface {v0, p1, p2}, Lcom/powermo/base/i;->b(Ljava/lang/String;Lcom/powermo/base/h;)V

    goto :goto_0
.end method
