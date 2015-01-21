.class public interface abstract Lzte/com/cn/cloudnotepad/skitch/iface/IWrite;
.super Ljava/lang/Object;
.source "IWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;
    }
.end annotation


# virtual methods
.method public abstract finishWrite()V
.end method

.method public abstract getCharacter(Lzte/com/cn/cloudnotepad/skitch/iface/IWrite$IGetBitmap;)V
.end method

.method public abstract init(FII)V
.end method

.method public abstract onFinishWrite()V
.end method

.method public abstract onStartWrite()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setHandWriteCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;)V
.end method

.method public abstract setTouchMonitor(Lzte/com/cn/cloudnotepad/skitch/view/HandWriteMonitor;)V
.end method
