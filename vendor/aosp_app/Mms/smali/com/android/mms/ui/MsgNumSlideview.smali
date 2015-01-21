.class public Lcom/android/mms/ui/MsgNumSlideview;
.super Landroid/widget/LinearLayout;
.source "MsgNumSlideview.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;
    }
.end annotation


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/MsgNumSlideview;->mDetector:Landroid/view/GestureDetector;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgNumSlideview;->mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;

    .line 76
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x1

    .line 84
    iget-object v4, p0, Lcom/android/mms/ui/MsgNumSlideview;->mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;

    if-nez v4, :cond_1

    .line 85
    const-string v4, "Mms/Txn"

    const-string v5, "MsgNumSlideView.onFling, no listener"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return v6

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 89
    .local v3, xStart:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 90
    .local v2, xEnd:I
    sub-int v0, v3, v2

    .line 91
    .local v0, flingDist:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 93
    .local v1, myWidth:I
    if-lez v0, :cond_2

    div-int/lit8 v4, v1, 0x2

    if-le v0, v4, :cond_2

    .line 94
    const-string v4, "Mms/Txn"

    const-string v5, "Left"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/android/mms/ui/MsgNumSlideview;->mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;

    invoke-interface {v4}, Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;->onSlideToNext()V

    goto :goto_0

    .line 96
    :cond_2
    if-gez v0, :cond_0

    neg-int v4, v0

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_0

    .line 97
    const-string v4, "Mms/Txn"

    const-string v5, "Right"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/android/mms/ui/MsgNumSlideview;->mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;

    invoke-interface {v4}, Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;->onSlideToPrev()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 123
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 133
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MsgNumSlideview;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/mms/ui/MsgNumSlideview;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 108
    .local v0, ret:Z
    return v0
.end method

.method public registerFlingListener(Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mms/ui/MsgNumSlideview;->mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;

    .line 142
    return-void
.end method

.method public unregisterFlingListener()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgNumSlideview;->mFlingListener:Lcom/android/mms/ui/MsgNumSlideview$MsgNumBarSlideListener;

    .line 146
    return-void
.end method
