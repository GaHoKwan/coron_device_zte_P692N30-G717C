.class final Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

.field final synthetic c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;

.field final synthetic d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    invoke-direct {v1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V

    return-void
.end method

.method public final onTransactionResult(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    invoke-direct {v1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;->onResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)V

    goto :goto_0
.end method

.method public final onTransactionStarted(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->getDelayedParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->finish()V

    goto :goto_0
.end method
