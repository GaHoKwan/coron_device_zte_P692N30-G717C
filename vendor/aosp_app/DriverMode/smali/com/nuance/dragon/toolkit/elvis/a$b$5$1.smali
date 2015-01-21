.class final Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b$5;IZLcom/nuance/dragon/toolkit/elvis/ElvisResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iput p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->a:I

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->b:Z

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->f(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->f(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;->onStartOfSpeech()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->g(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->a:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->h(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->h(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;->onEndOfSpeech()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->i(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->b:Z

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)V

    :goto_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->j(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->d:Lcom/nuance/dragon/toolkit/elvis/a$b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisResult;)V

    goto :goto_2
.end method
