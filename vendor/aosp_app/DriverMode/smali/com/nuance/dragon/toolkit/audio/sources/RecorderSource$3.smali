.class final Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;->a:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;->onStarted(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    :cond_0
    return-void
.end method
