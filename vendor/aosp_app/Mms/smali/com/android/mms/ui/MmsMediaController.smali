.class public Lcom/android/mms/ui/MmsMediaController;
.super Landroid/widget/FrameLayout;
.source "MmsMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field protected static final FADE_OUT:I = 0x1

.field protected static final SHOW_PROGRESS:I = 0x2

.field protected static final sDefaultTimeout:I = 0xbb8


# instance fields
.field protected duration:J

.field protected mAnchor:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentTime:Landroid/widget/TextView;

.field protected mDecor:Landroid/view/View;

.field protected mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mDragging:Z

.field protected mEndTime:Landroid/widget/TextView;

.field protected mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field protected mFormatBuilder:Ljava/lang/StringBuilder;

.field protected mFormatter:Ljava/util/Formatter;

.field protected mFromXml:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected mListenersSet:Z

.field protected mNextButton:Landroid/widget/ImageButton;

.field protected mNextListener:Landroid/view/View$OnClickListener;

.field protected mPauseButton:Landroid/widget/ImageButton;

.field protected mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

.field protected mPrevButton:Landroid/widget/ImageButton;

.field protected mPrevListener:Landroid/view/View$OnClickListener;

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field protected mRoot:Landroid/view/View;

.field protected mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field protected mShowing:Z

.field protected mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mUseFastForward:Z

.field protected mWindow:Landroid/view/Window;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected newposition:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsMediaController;-><init>(Landroid/content/Context;Z)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsMediaController;->mHeight:I

    .line 328
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$2;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 343
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$3;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 537
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$4;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    .line 668
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$5;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 713
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$6;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 804
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$7;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 815
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$8;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 237
    iput-object p0, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    .line 238
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController;->mContext:Landroid/content/Context;

    .line 239
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mUseFastForward:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsMediaController;->mHeight:I

    .line 328
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$2;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 343
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$3;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 537
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$4;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    .line 668
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$5;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 713
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$6;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 804
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$7;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 815
    new-instance v0, Lcom/android/mms/ui/MmsMediaController$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsMediaController$8;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 251
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController;->mContext:Landroid/content/Context;

    .line 252
    iput-boolean p2, p0, Lcom/android/mms/ui/MmsMediaController;->mUseFastForward:Z

    .line 253
    invoke-direct {p0}, Lcom/android/mms/ui/MmsMediaController;->initFloatingWindowLayout()V

    .line 254
    invoke-direct {p0}, Lcom/android/mms/ui/MmsMediaController;->initFloatingWindow()V

    .line 255
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MmsMediaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/mms/ui/MmsMediaController;->mHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/mms/ui/MmsMediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method private initFloatingWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 263
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 266
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    .line 269
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 270
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/mms/ui/MmsMediaController$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsMediaController$1;-><init>(Lcom/android/mms/ui/MmsMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 281
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 287
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 289
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 290
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 291
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 293
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 301
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 302
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 304
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 305
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 306
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 309
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 310
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 311
    return-void
.end method

.method private updateFloatingWindowLayout()V
    .locals 4

    .prologue
    .line 316
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 317
    .local v0, anchorPos:[I
    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 319
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 320
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 323
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/android/mms/ui/MmsMediaController;->mHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method protected disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_2
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0xbb8

    const/4 v2, 0x1

    .line 621
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 622
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 624
    .local v1, uniqueDown:Z
    :goto_0
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x55

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_3

    .line 627
    :cond_0
    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->doPauseResume()V

    .line 629
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 630
    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 631
    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 663
    :cond_1
    :goto_1
    return v2

    .line 622
    .end local v1           #uniqueDown:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 635
    .restart local v1       #uniqueDown:Z
    :cond_3
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_4

    .line 636
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->start()V

    .line 638
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 639
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    goto :goto_1

    .line 642
    :cond_4
    const/16 v3, 0x56

    if-eq v0, v3, :cond_5

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_6

    .line 644
    :cond_5
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->pause()V

    .line 646
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 647
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    goto :goto_1

    .line 650
    :cond_6
    const/16 v3, 0x19

    if-eq v0, v3, :cond_7

    const/16 v3, 0x18

    if-eq v0, v3, :cond_7

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_8

    .line 654
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 655
    :cond_8
    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x52

    if-ne v0, v3, :cond_a

    .line 656
    :cond_9
    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    goto :goto_1

    .line 662
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 663
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected doPauseResume()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->pause()V

    .line 696
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 697
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MmsMediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 401
    const v1, 0x7f0f00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 402
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 404
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    :cond_0
    const v1, 0x7f0f00df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    if-nez v1, :cond_1

    .line 411
    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mUseFastForward:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    :cond_1
    const v1, 0x7f0f00e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 416
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    if-nez v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsMediaController;->mUseFastForward:Z

    if-eqz v4, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :cond_2
    const v1, 0x7f0f00de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mListenersSet:Z

    if-nez v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    :cond_3
    const v1, 0x7f0f00dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 429
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mListenersSet:Z

    if-nez v1, :cond_4

    .line 430
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    :cond_4
    const v1, 0x7f0f00da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 434
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    .line 435
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 437
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 439
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 442
    :cond_6
    const v1, 0x7f0f00db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mEndTime:Landroid/widget/TextView;

    .line 443
    const v1, 0x7f0f00d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 445
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mFormatter:Ljava/util/Formatter;

    .line 447
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->installPrevNextListeners()V

    .line 448
    return-void

    :cond_7
    move v1, v3

    .line 411
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 419
    goto/16 :goto_1
.end method

.method protected installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 838
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 831
    goto :goto_0

    :cond_3
    move v1, v2

    .line 836
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 391
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsMediaController;->initControllerView(Landroid/view/View;)V

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsMediaController;->initControllerView(Landroid/view/View;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 794
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 795
    const-class v0, Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 796
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 800
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 801
    const-class v0, Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 802
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 609
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 615
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, -0x1

    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 373
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 379
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 774
    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 776
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 777
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 779
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 780
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 782
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->disableUnsupportedButtons()V

    .line 783
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 784
    return-void

    :cond_6
    move v0, v2

    .line 774
    goto :goto_0

    :cond_7
    move v1, v2

    .line 777
    goto :goto_1
.end method

.method public setMdragging(Z)V
    .locals 0
    .parameter "isTrue"

    .prologue
    .line 789
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsMediaController;->mDragging:Z

    .line 790
    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    .line 356
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 357
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "next"
    .parameter "prev"

    .prologue
    const/4 v1, 0x0

    .line 841
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 842
    iput-object p2, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsMediaController;->mListenersSet:Z

    .line 845
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->installPrevNextListeners()V

    .line 848
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsMediaController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    :cond_1
    return-void
.end method

.method protected setProgress()I
    .locals 9

    .prologue
    .line 576
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/mms/ui/MmsMediaController;->mDragging:Z

    if-eqz v5, :cond_2

    .line 577
    :cond_0
    const/4 v4, 0x0

    .line 604
    :cond_1
    :goto_0
    return v4

    .line 579
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 580
    .local v4, position:I
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 582
    .local v0, duration:I
    const-string v5, "MmsMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setProgress, position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_4

    .line 586
    if-lez v0, :cond_3

    .line 588
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 589
    .local v2, pos:J
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 591
    .end local v2           #pos:J
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 592
    .local v1, percent:I
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 595
    .end local v1           #percent:I
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 596
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 598
    iget-object v5, p0, Lcom/android/mms/ui/MmsMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    :cond_6
    const/16 v5, 0x2710

    if-ge v0, v5, :cond_1

    .line 602
    const/16 v4, 0x384

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 455
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 456
    return-void
.end method

.method public show(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    .line 489
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mAnchor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->setProgress()I

    .line 491
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->disableUnsupportedButtons()V

    .line 495
    invoke-direct {p0}, Lcom/android/mms/ui/MmsMediaController;->updateFloatingWindowLayout()V

    .line 496
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/MmsMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iput-boolean v4, p0, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 504
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 511
    :cond_2
    return-void
.end method

.method protected stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 559
    div-int/lit16 v3, p1, 0x3e8

    .line 561
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 562
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 563
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 565
    .local v0, hours:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 566
    if-lez v0, :cond_0

    .line 567
    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected updatePausePlay()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
