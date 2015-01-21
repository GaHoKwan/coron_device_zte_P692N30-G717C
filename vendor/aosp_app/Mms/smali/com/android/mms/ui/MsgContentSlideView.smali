.class public Lcom/android/mms/ui/MsgContentSlideView;
.super Landroid/widget/ScrollView;
.source "MsgContentSlideView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;
    }
.end annotation


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/MsgContentSlideView;->mDetector:Landroid/view/GestureDetector;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/MsgContentSlideView;->mDetector:Landroid/view/GestureDetector;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    .line 83
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 142
    const-string v0, "Mms/Txn"

    const-string v1, "MsgContentSlideView.onDown"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 94
    const-string v7, "Mms/Txn"

    const-string v8, "MsgContentSlideView.onFling"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v7, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    if-nez v7, :cond_1

    .line 97
    const-string v6, "Mms/Txn"

    const-string v7, "MsgNumSlideView.onFling, no listener"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return v5

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 102
    :cond_2
    if-nez p1, :cond_3

    .line 103
    const-string v5, "Mms/Txn"

    const-string v7, "e1 null"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v5, v6

    .line 107
    goto :goto_0

    .line 105
    :cond_3
    const-string v5, "Mms/Txn"

    const-string v7, "e2 null"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 110
    .local v4, xStart:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 111
    .local v3, xEnd:I
    sub-int v0, v4, v3

    .line 112
    .local v0, flingDist:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 113
    .local v2, myWidth:I
    div-int/lit8 v1, v2, 0xa

    .line 115
    .local v1, minDeltaX:I
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "e2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sub-int v7, v3, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v1, :cond_5

    move v5, v6

    .line 118
    goto :goto_0

    .line 121
    :cond_5
    if-lez v0, :cond_6

    div-int/lit8 v6, v2, 0x3

    if-le v0, v6, :cond_6

    .line 122
    const-string v6, "Mms/Txn"

    const-string v7, "left"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v6, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    invoke-interface {v6}, Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;->onSlideToNext()V

    goto :goto_0

    .line 124
    :cond_6
    if-gez v0, :cond_0

    neg-int v6, v0

    div-int/lit8 v7, v2, 0x3

    if-le v6, v7, :cond_0

    .line 125
    const-string v6, "Mms/Txn"

    const-string v7, "right"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    invoke-interface {v6}, Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;->onSlideToPrev()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 147
    const-string v0, "Mms/Txn"

    const-string v1, "MsgContentSlideView.onLongPress"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 153
    const-string v0, "Mms/Txn"

    const-string v1, "MsgContentSlideView.onScroll"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 158
    const-string v0, "Mms/Txn"

    const-string v1, "MsgContentSlideView.onShowPress"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 162
    const-string v0, "Mms/Txn"

    const-string v1, "MsgContentSlideView.onSingleTapUp"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, ret:Z
    const-string v1, "Mms/Txn"

    const-string v2, "MsgContentSlideView.onTouchEvent"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/MsgContentSlideView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public registerFlingListener(Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    .line 168
    return-void
.end method

.method public unregisterFlingListener()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgContentSlideView;->mFlingListener:Lcom/android/mms/ui/MsgContentSlideView$MsgContentSlideListener;

    .line 172
    return-void
.end method
