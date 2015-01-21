.class public Lcom/android/music/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    .line 147
    new-instance v0, Lcom/android/music/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/music/RepeatingImageButton$1;-><init>(Lcom/android/music/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/RepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 158
    .local v0, now:J
    iget-object v2, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/android/music/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 161
    :cond_0
    return-void

    .line 159
    :cond_1
    iget v2, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 121
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 126
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 134
    sparse-switch p1, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 138
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 141
    iput-wide v2, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, v2}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 113
    iput-wide v3, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    .line 102
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 95
    iput-wide p2, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    .line 96
    return-void
.end method
