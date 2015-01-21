.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->c(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlayingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;->a:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->handleStopped()V

    :cond_0
    return-void
.end method
