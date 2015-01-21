.class final Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[S

.field final synthetic b:[S

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:I

.field final synthetic g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;[S[SIILjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->a:[S

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->b:[S

    iput p4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->c:I

    iput p5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->d:I

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->e:Ljava/lang/Object;

    iput p7, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->a:[S

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->b:[S

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->c:I

    iget v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->guessAudioAlignment([S[SIII)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;->g:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->k(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2$1;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$2;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
