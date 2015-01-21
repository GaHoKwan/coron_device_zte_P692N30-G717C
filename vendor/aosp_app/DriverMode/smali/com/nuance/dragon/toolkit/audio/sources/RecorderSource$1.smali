.class final Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->a(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->handleSourceClosed(Z)V

    :cond_0
    return-void
.end method
