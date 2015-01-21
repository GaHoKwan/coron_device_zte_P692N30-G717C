.class final Lcom/nuance/dragon/toolkit/hybrid/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

.field final synthetic e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

.field final synthetic f:Lcom/nuance/dragon/toolkit/hybrid/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Ljava/util/List;ILcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->b:Ljava/util/List;

    iput p4, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->c:I

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->d:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    const-string v1, "Got unexpected Vocon error"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->c(Lcom/nuance/dragon/toolkit/hybrid/b;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->b(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/vocon/VoconError;)Lcom/nuance/dragon/toolkit/vocon/VoconError;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->processResult()V

    goto :goto_0
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    const-string v1, "Got unexpected Vocon result"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current confidence: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,last best confidence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lt v4, v3, :cond_5

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->d:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    invoke-interface {v2, v1, v0}, Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;->processForCloud(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->sendParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->processResult()V

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0, v7}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->c(Lcom/nuance/dragon/toolkit/hybrid/b;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->f:Lcom/nuance/dragon/toolkit/hybrid/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->g(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->d(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->a:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->h(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/hybrid/b$7;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;ZLcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
