.class final Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ttsGenerationFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v0

    if-eq v0, p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->b(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;->onSpeakingDone(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;ZZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;->onSpeakingDone(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;ZZLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method public final ttsGenerationStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v0

    if-eq v0, p3, :cond_0

    :cond_0
    return-void
.end method

.method public final ttsStreamingFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v0

    if-eq v0, p3, :cond_0

    :cond_0
    return-void
.end method

.method public final ttsStreamingStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v0

    if-eq v0, p3, :cond_0

    :cond_0
    return-void
.end method
