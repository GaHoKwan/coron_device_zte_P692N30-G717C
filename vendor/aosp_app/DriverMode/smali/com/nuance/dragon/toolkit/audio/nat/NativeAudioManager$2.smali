.class final Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$2;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager$2;->a:Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;->a(Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioManager;)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;->release()V

    return-void
.end method
