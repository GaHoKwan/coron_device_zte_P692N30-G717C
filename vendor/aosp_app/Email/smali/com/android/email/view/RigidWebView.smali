.class public Lcom/android/email/view/RigidWebView;
.super Landroid/webkit/WebView;
.source "RigidWebView.java"


# static fields
.field private static final MAX_RESIZE_INTERVAL:I = 0x12c

.field private static final MIN_RESIZE_INTERVAL:I = 0xc8


# instance fields
.field private final mClock:Lcom/android/email/Clock;

.field private mIgnoreNext:Z

.field private mLastSizeChangeTime:J

.field private mRealHeight:I

.field private mRealWidth:I

.field private final mThrottle:Lcom/android/email/Throttle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    .line 54
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/android/email/view/RigidWebView$1;-><init>(Lcom/android/email/view/RigidWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    .line 54
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/android/email/view/RigidWebView$1;-><init>(Lcom/android/email/view/RigidWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    .line 54
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/android/email/view/RigidWebView$1;-><init>(Lcom/android/email/view/RigidWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/view/RigidWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/email/view/RigidWebView;->performSizeChangeDelayed()V

    return-void
.end method

.method private performSizeChange(II)V
    .locals 2
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/email/view/RigidWebView;->mRealWidth:I

    iget v1, p0, Lcom/android/email/view/RigidWebView;->mRealHeight:I

    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 97
    iget-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 98
    return-void
.end method

.method private performSizeChangeDelayed()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/view/RigidWebView;->mIgnoreNext:Z

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/view/RigidWebView;->performSizeChange(II)V

    .line 103
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView dispatchKeyevent event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 69
    iput p1, p0, Lcom/android/email/view/RigidWebView;->mRealWidth:I

    .line 70
    iput p2, p0, Lcom/android/email/view/RigidWebView;->mRealHeight:I

    .line 71
    iget-object v4, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v4}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    .line 72
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 76
    .local v2, recentlySized:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/email/view/RigidWebView;->mIgnoreNext:Z

    if-eqz v4, :cond_2

    .line 77
    iput-boolean v3, p0, Lcom/android/email/view/RigidWebView;->mIgnoreNext:Z

    .line 78
    if-eqz v2, :cond_2

    .line 79
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "Email"

    const-string v4, "Supressing size change in RigidWebView"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :goto_1
    return-void

    .end local v2           #recentlySized:Z
    :cond_1
    move v2, v3

    .line 72
    goto :goto_0

    .line 86
    .restart local v2       #recentlySized:Z
    :cond_2
    if-eqz v2, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v3}, Lcom/android/email/Throttle;->onEvent()V

    goto :goto_1

    .line 91
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/android/email/view/RigidWebView;->performSizeChange(II)V

    goto :goto_1
.end method
