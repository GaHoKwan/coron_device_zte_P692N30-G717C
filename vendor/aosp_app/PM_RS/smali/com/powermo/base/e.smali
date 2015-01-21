.class public Lcom/powermo/base/e;
.super Lcom/powermo/base/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/base/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/powermo/base/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/powermo/base/e;->d()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Lcom/powermo/base/e;
    .locals 0

    return-object p0
.end method

.method protected synthetic i()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/base/e;->h()Lcom/powermo/base/e;

    move-result-object v0

    return-object v0
.end method
