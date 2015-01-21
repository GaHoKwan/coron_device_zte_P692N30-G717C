.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/b/d;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/i;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/i;->a:[B

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/b;-><init>([B)V

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->b()V

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->c()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse NLSML dictation results: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Trying to parse XML results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/e;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/i;->a:[B

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/e;-><init>([B)V

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->b()V

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->c()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse XML neither NLSML dictation results. Error from XML Parser: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Error from NLSML Parser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Received IOException while parsing XML/NLSML."

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
