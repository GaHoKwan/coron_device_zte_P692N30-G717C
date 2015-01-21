.class final Lcom/nuance/dragon/toolkit/hybrid/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

.field final synthetic c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

.field final synthetic d:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

.field final synthetic e:Lcom/nuance/dragon/toolkit/hybrid/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->b:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->c(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    const-string v1, "Got unexpected Cloud error"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->d(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->e(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a;->c(Lcom/nuance/dragon/toolkit/hybrid/a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->f(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->f(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v2

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/hybrid/a;->a(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->h(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V

    invoke-virtual {v0, p2}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->c(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/a;->a(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V

    return-void
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->c(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    const-string v1, "Got unexpected Cloud result"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->b:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    invoke-interface {v1, p1}, Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;->getInterpretedResult(Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->b:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    invoke-interface {v1, p1}, Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;->getUpdateRequiredList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nuance/dragon/toolkit/recognition/InterpretException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->d(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->e(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a;->c(Lcom/nuance/dragon/toolkit/hybrid/a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->e:Lcom/nuance/dragon/toolkit/hybrid/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->f(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->g(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/hybrid/a$2;->d:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-static/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/hybrid/a;->a(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v0}, Lcom/nuance/dragon/toolkit/hybrid/a$2;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V

    goto :goto_0
.end method
