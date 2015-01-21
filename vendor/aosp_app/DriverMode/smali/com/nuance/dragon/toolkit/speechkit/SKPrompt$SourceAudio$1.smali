.class final Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 0

    return-void
.end method

.method public final onStopped(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$SourceAudio;->done()V

    return-void
.end method
