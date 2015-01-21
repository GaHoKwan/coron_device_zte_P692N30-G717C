.class final Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->a:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->c:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->a:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->d:I

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->e(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->f:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->f(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    move-result-object v1

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    if-gt v1, v0, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->g(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    move-result-object v1

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New secondary adjustment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->h(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->i(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->j(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->notifySourceClosed()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got invalid alignment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->c:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;->b:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->d:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;)Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;

    goto :goto_1
.end method
