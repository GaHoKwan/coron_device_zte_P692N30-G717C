.class public final Lcom/nuance/dragon/toolkit/util/Logger;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/nuance/dragon/toolkit/util/Logger$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/util/internal/e;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/internal/e;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NMT"

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/util/Logger;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NMT"

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/util/Logger;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "NMT"

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/util/Logger;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static info(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NMT"

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/util/Logger;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static verbose(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NMT"

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/util/Logger;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NMT"

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/util/Logger;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
