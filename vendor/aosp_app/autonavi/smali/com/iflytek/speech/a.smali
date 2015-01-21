.class Lcom/iflytek/speech/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/SpeechListener;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SpeechVerify;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/SpeechVerify;Ljava/lang/String;Lcom/iflytek/speech/SpeechVerify$DownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/a;->a:Lcom/iflytek/speech/SpeechVerify;

    iput-object p2, p0, Lcom/iflytek/speech/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/speech/a;->a:Lcom/iflytek/speech/SpeechVerify;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechVerify;->a(Lcom/iflytek/speech/SpeechVerify;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/a;->a:Lcom/iflytek/speech/SpeechVerify;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/iflytek/speech/SpeechVerify;->a(Lcom/iflytek/speech/SpeechVerify;Ljava/util/HashMap;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/a;->a:Lcom/iflytek/speech/SpeechVerify;

    iget-object v1, p0, Lcom/iflytek/speech/a;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/iflytek/speech/SpeechVerify;->a(Lcom/iflytek/speech/SpeechVerify;[BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/iflytek/speech/a;->a:Lcom/iflytek/speech/SpeechVerify;

    invoke-static {v1}, Lcom/iflytek/speech/SpeechVerify;->a(Lcom/iflytek/speech/SpeechVerify;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/speech/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    invoke-interface {v1, v0}, Lcom/iflytek/speech/SpeechVerify$DownloadListener;->onData(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0xa

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/iflytek/speech/SpeechVerify$DownloadListener;->onError(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_0
.end method

.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/SpeechVerify$DownloadListener;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/SpeechVerify$DownloadListener;->onError(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
