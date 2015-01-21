.class final Lcom/nuance/dragon/toolkit/elvis/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/elvis/e;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/elvis/WordSlot;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/grammar/Word;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;IIZZ)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/Word;Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a([S)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recorded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shorts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/f;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
    .locals 5

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;-><init>(Ljava/util/List;)V

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;IJ)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;-><init>()V

    return-object v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/Grammar;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/Word;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/List;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/f;->a:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b([S)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/util/List;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/f;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/f;->a:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
