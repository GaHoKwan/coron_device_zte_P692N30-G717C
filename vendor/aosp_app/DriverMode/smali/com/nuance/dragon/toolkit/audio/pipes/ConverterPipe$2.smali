.class final Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->notifyChunksAvailable()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->e(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe$2;->c:Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ConverterPipe;->notifySourceClosed()V

    :cond_3
    return-void
.end method
