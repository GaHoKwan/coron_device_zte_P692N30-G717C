.class final Lcom/nuance/dragon/toolkit/hybrid/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/hybrid/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->b:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    const-string v1, "Got unexpected Cloud error"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->c(Lcom/nuance/dragon/toolkit/hybrid/b;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->i(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->g(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->d(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->h(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->b:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;ZLcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->j(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/vocon/VoconError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->b:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    const-string v1, "Got unexpected Cloud result"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->d(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->c(Lcom/nuance/dragon/toolkit/hybrid/b;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->g(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->d(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->h(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->isFinal()Z

    move-result v5

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/hybrid/b$4;->b:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;ZLcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0
.end method
