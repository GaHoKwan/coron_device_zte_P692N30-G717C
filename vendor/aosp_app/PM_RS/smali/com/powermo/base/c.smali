.class public abstract Lcom/powermo/base/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/base/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/powermo/base/b;)V
    .locals 1

    :try_start_0
    check-cast p1, Lcom/powermo/base/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/powermo/base/c;->a(Lcom/powermo/base/e;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public abstract a(Lcom/powermo/base/e;)V
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/powermo/base/b;

    invoke-virtual {p0, p1}, Lcom/powermo/base/c;->c(Lcom/powermo/base/b;)V

    return-void
.end method

.method public final b(Lcom/powermo/base/b;)V
    .locals 1

    :try_start_0
    check-cast p1, Lcom/powermo/base/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/powermo/base/c;->b(Lcom/powermo/base/e;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public abstract b(Lcom/powermo/base/e;)V
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/powermo/base/b;

    invoke-virtual {p0, p1}, Lcom/powermo/base/c;->b(Lcom/powermo/base/b;)V

    return-void
.end method

.method public final c(Lcom/powermo/base/b;)V
    .locals 1

    :try_start_0
    check-cast p1, Lcom/powermo/base/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/powermo/base/c;->c(Lcom/powermo/base/e;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public abstract c(Lcom/powermo/base/e;)V
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/powermo/base/b;

    invoke-virtual {p0, p1}, Lcom/powermo/base/c;->a(Lcom/powermo/base/b;)V

    return-void
.end method
