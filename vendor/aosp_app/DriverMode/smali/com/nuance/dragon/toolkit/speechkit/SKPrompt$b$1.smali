.class final Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;

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

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;->done()V

    return-void
.end method
