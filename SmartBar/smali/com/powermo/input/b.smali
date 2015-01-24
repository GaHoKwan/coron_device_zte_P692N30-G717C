.class public Lcom/powermo/input/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/powermo/input/a;
    .locals 2

    sget-boolean v0, Lcom/powermo/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "127.0.0.1"

    const/16 v1, 0x7448

    invoke-static {v0, v1, p0}, Lcom/powermo/input/b;->a(Ljava/lang/String;II)Lcom/powermo/input/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/powermo/input/LocalInputInjector;

    invoke-direct {v0, p0}, Lcom/powermo/input/LocalInputInjector;-><init>(I)V

    :try_start_0
    invoke-virtual {v0}, Lcom/powermo/input/LocalInputInjector;->a()V

    invoke-virtual {v0}, Lcom/powermo/input/LocalInputInjector;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)Lcom/powermo/input/a;
    .locals 1

    new-instance v0, Lcom/powermo/input/a/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/powermo/input/a/g;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Lcom/powermo/input/a;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/powermo/input/LocalInputInjector;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/powermo/input/LocalInputInjector;

    invoke-virtual {p0}, Lcom/powermo/input/LocalInputInjector;->d()Z

    invoke-virtual {p0}, Lcom/powermo/input/LocalInputInjector;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/powermo/input/a/g;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/powermo/input/b;->b(Lcom/powermo/input/a;)V

    goto :goto_0
.end method

.method public static b(Lcom/powermo/input/a;)V
    .locals 1

    instance-of v0, p0, Lcom/powermo/input/a/g;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/powermo/input/a/g;

    invoke-virtual {p0}, Lcom/powermo/input/a/g;->b()V

    :cond_0
    return-void
.end method
