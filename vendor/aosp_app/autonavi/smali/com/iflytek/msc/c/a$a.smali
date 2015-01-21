.class public Lcom/iflytek/msc/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/SpeechListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/msc/c/a;

.field private b:Lcom/iflytek/speech/SpeechListener;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/msc/c/a;Lcom/iflytek/speech/SpeechListener;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/msc/c/a$a;->a:Lcom/iflytek/msc/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/c/a$a;->b:Lcom/iflytek/speech/SpeechListener;

    new-instance v0, Lcom/iflytek/msc/c/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/msc/c/e;-><init>(Lcom/iflytek/msc/c/a$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/msc/c/a$a;->b:Lcom/iflytek/speech/SpeechListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/msc/c/a$a;)Lcom/iflytek/speech/SpeechListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/a$a;->b:Lcom/iflytek/speech/SpeechListener;

    return-object v0
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/c/a$a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
