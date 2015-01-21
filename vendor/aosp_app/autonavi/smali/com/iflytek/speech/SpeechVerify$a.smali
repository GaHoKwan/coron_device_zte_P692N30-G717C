.class final Lcom/iflytek/speech/SpeechVerify$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/VerifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/SpeechVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SpeechVerify;

.field private b:Lcom/iflytek/speech/VerifyListener;

.field private c:Lcom/iflytek/speech/VerifyResult;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/SpeechVerify;Lcom/iflytek/speech/VerifyListener;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iflytek/speech/SpeechVerify$a;->a:Lcom/iflytek/speech/SpeechVerify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->b:Lcom/iflytek/speech/VerifyListener;

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->c:Lcom/iflytek/speech/VerifyResult;

    new-instance v0, Lcom/iflytek/speech/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/speech/f;-><init>(Lcom/iflytek/speech/SpeechVerify$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/speech/SpeechVerify$a;->b:Lcom/iflytek/speech/VerifyListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->b:Lcom/iflytek/speech/VerifyListener;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/speech/SpeechVerify$a;)Lcom/iflytek/speech/VerifyResult;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->c:Lcom/iflytek/speech/VerifyResult;

    return-object v0
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnd(Lcom/iflytek/speech/VerifyResult;Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/speech/SpeechVerify$a;->c:Lcom/iflytek/speech/VerifyResult;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRegister(Lcom/iflytek/speech/VerifyResult;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/speech/SpeechVerify$a;->c:Lcom/iflytek/speech/VerifyResult;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechVerify$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
