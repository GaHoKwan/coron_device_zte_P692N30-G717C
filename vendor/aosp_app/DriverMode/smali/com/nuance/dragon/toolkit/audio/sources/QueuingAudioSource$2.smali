.class final Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;->b:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;->b:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource$2;->b:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->c(Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;)V

    :cond_0
    return-void
.end method
