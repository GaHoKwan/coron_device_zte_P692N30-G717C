.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 0

    return-void
.end method

.method public final onStarted(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->b(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->b(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    goto :goto_0
.end method

.method public final onStopped(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 0

    return-void
.end method
