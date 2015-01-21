.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

.field final synthetic b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

.field final synthetic c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;->onSpeakingBegin(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onStopped(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->b(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;->onSpeakingDone(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;ZLcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$2;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->f(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
