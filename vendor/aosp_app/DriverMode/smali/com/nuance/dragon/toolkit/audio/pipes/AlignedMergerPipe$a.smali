.class final Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->a:I

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$a;->b:I

    return-void
.end method
