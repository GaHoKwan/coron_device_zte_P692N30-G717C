.class final Lcom/iflytek/speech/SpeechRecognizer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SpeechRecognizer;

.field private b:Lcom/iflytek/speech/RecognizerListener;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/SpeechRecognizer;Lcom/iflytek/speech/RecognizerListener;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->b:Lcom/iflytek/speech/RecognizerListener;

    new-instance v0, Lcom/iflytek/speech/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/speech/d;-><init>(Lcom/iflytek/speech/SpeechRecognizer$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->b:Lcom/iflytek/speech/RecognizerListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechRecognizer$a;)Lcom/iflytek/speech/RecognizerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->b:Lcom/iflytek/speech/RecognizerListener;

    return-object v0
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "onBeginOfSpeech"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    const-string v0, "start record"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/speech/SpeechRecognizer;->a(Lcom/iflytek/speech/SpeechRecognizer;J)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechRecognizer;->c(Lcom/iflytek/speech/SpeechRecognizer;)Lcom/iflytek/msc/c/c;

    move-result-object v0

    check-cast v0, Lcom/iflytek/msc/b/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/c;->e()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/speech/SpeechRecognizer;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechRecognizer;->c(Lcom/iflytek/speech/SpeechRecognizer;)Lcom/iflytek/msc/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/msc/c/c;->o()Lcom/iflytek/b/b;

    move-result-object v0

    const-string v1, "aap"

    invoke-virtual {v0, v1}, Lcom/iflytek/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    iget-object v1, v1, Lcom/iflytek/speech/SpeechRecognizer;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1, v0}, Lcom/iflytek/msc/a/b;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)V

    :cond_0
    const-string v0, "session end"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechRecognizer;->d(Lcom/iflytek/speech/SpeechRecognizer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "iat_"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "end record"

    invoke-static {v0, v3}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/speech/SpeechRecognizer;->a(Lcom/iflytek/speech/SpeechRecognizer;J)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResults(Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lcom/iflytek/Setting;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechRecognizer;->a(Lcom/iflytek/speech/SpeechRecognizer;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/speech/SpeechRecognizer;->b(Lcom/iflytek/speech/SpeechRecognizer;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/iflytek/speech/SpeechRecognizer;->b(Lcom/iflytek/speech/SpeechRecognizer;J)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->a:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechRecognizer;->a(Lcom/iflytek/speech/SpeechRecognizer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/e;->a(J)V

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v3, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string v3, "result arrived:"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/RecognizerResult;

    iget-object v0, v0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v3, "all result arrived:"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/RecognizerResult;

    iget-object v0, v0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onVolumeChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
