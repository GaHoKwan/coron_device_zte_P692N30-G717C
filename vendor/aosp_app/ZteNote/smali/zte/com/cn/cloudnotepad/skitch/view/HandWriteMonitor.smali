.class public Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;
.super Ljava/lang/Object;
.source "HandWriteMonitor.java"


# static fields
.field private static final DEFAULT_DELAY_TIME:J = 0x190L

.field private static final MESSAGE_FINISH_GETCHARACTER:I = 0x2

.field private static final MESSAGE_FINISH_WRITE:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field private mBitmapGetter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;

.field private mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

.field private mDelayTime:J

.field private mWriteStarted:Z

.field private mWriter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;)V
    .locals 2
    .parameter "iHandWrite"
    .parameter "iWrite"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mDelayTime:J

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriteStarted:Z

    .line 27
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$1;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mBitmapGetter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;

    .line 38
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor$2;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    .line 56
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private innerFinishGetCharacter()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriteStarted:Z

    .line 62
    return-void
.end method

.method private innerFinishWrite()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "innerFinishWrite called"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mBitmapGetter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->getCharacter(Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;)V

    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->onFinishWrite()V

    .line 69
    const-string v0, "innerFinishWrite out"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public finishGetCharacter()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "finishGetCharacter() called"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->innerFinishGetCharacter()V

    .line 79
    const-string v0, "finishGetCharacter() out"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public finishWrite()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "finishWrite() called"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->innerFinishWrite()V

    .line 87
    const-string v0, "finishWrite() out"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setDelayTime(J)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 92
    iput-wide p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mDelayTime:J

    .line 93
    return-void
.end method

.method public setHandWriteCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;)V
    .locals 0
    .parameter "iHandWrite"

    .prologue
    .line 97
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    .line 98
    return-void
.end method

.method public touch(I)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "touch() called, mWriteStarted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriteStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriteStarted:Z

    if-nez v0, :cond_0

    .line 104
    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriteStarted:Z

    .line 105
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriter:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->onStartWrite()V

    .line 107
    :cond_0
    if-ne p1, v2, :cond_2

    .line 108
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    :cond_1
    :goto_0
    const-string v0, "touch() out"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    return-void

    .line 110
    :cond_2
    if-nez p1, :cond_1

    .line 111
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public writeStarted()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->mWriteStarted:Z

    return v0
.end method
