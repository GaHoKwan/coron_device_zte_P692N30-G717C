.class final Lcom/nuance/dragon/toolkit/hybrid/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/hybrid/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$6;->b:Lcom/nuance/dragon/toolkit/hybrid/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/b$6;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEndOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$6;->b:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->d(Lcom/nuance/dragon/toolkit/hybrid/b;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$6;->b:Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b;->c(Lcom/nuance/dragon/toolkit/hybrid/b;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$6;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onEndOfSpeech()V

    return-void
.end method

.method public final onStartOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$6;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onStartOfSpeech()V

    return-void
.end method
