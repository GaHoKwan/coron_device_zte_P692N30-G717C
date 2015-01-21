.class final Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field final synthetic b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

.field final synthetic c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;->onSpeakingBegin(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onStopped(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->b(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;->onSpeakingDone(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;ZZLjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
