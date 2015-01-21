.class final Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->getAudioEnergyLevel()F

    move-result v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;->onEnergyLevelAvailable(F)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Landroid/os/Handler;

    move-result-object v1

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
