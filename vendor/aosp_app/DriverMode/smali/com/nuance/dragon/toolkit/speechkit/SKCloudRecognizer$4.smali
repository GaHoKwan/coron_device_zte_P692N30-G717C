.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->n(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->k(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->l(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-interface {v0, v1, p1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;->onError(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V

    return-void
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->i(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->i(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->j(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->k(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->l(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-interface {v0, v1, p1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;->onResult(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)V

    goto :goto_0
.end method
