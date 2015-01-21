.class final Lcom/nuance/dragon/toolkit/hybrid/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/hybrid/b$a;

.field final synthetic c:Lcom/nuance/dragon/toolkit/hybrid/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;Lcom/nuance/dragon/toolkit/hybrid/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->b:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEndOfSpeech()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->b:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    const-string v1, "Got unexpected Vocon end-of-speech"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->b:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->d(Lcom/nuance/dragon/toolkit/hybrid/b;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->c:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->c(Lcom/nuance/dragon/toolkit/hybrid/b;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onEndOfSpeech()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->b:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->b:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->processResult()V

    goto :goto_0
.end method

.method public final onStartOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$5;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onStartOfSpeech()V

    return-void
.end method
