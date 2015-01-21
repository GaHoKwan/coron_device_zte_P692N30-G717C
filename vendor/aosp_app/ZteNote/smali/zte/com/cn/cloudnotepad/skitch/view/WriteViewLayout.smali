.class public Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;
.super Landroid/widget/FrameLayout;
.source "WriteViewLayout.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;


# instance fields
.field private mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

.field private mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

.field public mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v0, 0x7f0600d6

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    .line 39
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public finishWrite()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->writeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;->finishWrite()V

    .line 47
    :cond_0
    return-void
.end method

.method public getCharacter(Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;)V
    .locals 1
    .parameter "iGetBitmap"

    .prologue
    .line 51
    const-string v0, "getCharacter() called"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->getCharacter(Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public init(FII)V
    .locals 1
    .parameter "density"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 61
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->init(FII)V

    .line 62
    return-void
.end method

.method public onFinishWrite()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "wangna"

    const-string v1, "onFinishWrite() called"

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->onFinishWrite()V

    .line 69
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;->invalidateCanvas()V

    .line 71
    return-void
.end method

.method public onHandwriteDone()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->finishWrite()V

    .line 101
    return-void
.end method

.method public onStartWrite()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->onStartWrite()V

    .line 77
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 81
    const-string v0, "on Touch for writeviewlayout called."

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public setHandWriteCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;)V
    .locals 2
    .parameter "ihw"

    .prologue
    .line 88
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;

    .line 89
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-direct {v0, p1, p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;-><init>(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    .line 90
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->setHandWriteCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;)V

    .line 91
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mMonitor:Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->setTouchMonitor(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V

    .line 92
    return-void
.end method

.method public setTouchMonitor(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V
    .locals 1
    .parameter "hwMonitor"

    .prologue
    .line 96
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->mWriteView:Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;->setTouchMonitor(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V

    .line 97
    return-void
.end method
