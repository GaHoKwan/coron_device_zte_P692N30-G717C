.class public Lcom/iflytek/speech/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/speech/c;

.field private b:Lcom/iflytek/speech/b;

.field private c:I

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/c;Lcom/iflytek/speech/b;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/speech/c$a;->a:Lcom/iflytek/speech/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/c$a;->b:Lcom/iflytek/speech/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/speech/c$a;->c:I

    new-instance v0, Lcom/iflytek/speech/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/speech/e;-><init>(Lcom/iflytek/speech/c$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/speech/c$a;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/speech/c$a;->b:Lcom/iflytek/speech/b;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/c$a;)Lcom/iflytek/speech/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/c$a;->b:Lcom/iflytek/speech/b;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/speech/c$a;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/c$a;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/c$a;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/c$a;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III)V"
        }
    .end annotation

    iput p2, p0, Lcom/iflytek/speech/c$a;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BUFFER length = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " beginpos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/speech/c$a;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p3, p4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/c$a;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
