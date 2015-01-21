.class final Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$4;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$4;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->d(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$4;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->d(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;->onStartOfSpeech()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$4;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->e(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    :cond_0
    return-void
.end method
