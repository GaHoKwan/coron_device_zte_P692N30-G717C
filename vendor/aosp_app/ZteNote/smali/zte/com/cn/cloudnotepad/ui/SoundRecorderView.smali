.class public Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;
    }
.end annotation


# static fields
.field public static final STATE_IDLE:I = 0x1

.field private static final STATE_PAUSE:I = 0x2

.field private static final STATE_PLAY:I = 0x1

.field public static final STATE_RECORD:I = 0x2

.field private static mRecordState:I


# instance fields
.field private allTime:Landroid/widget/TextView;

.field private currentTime:Landroid/widget/TextView;

.field private fileIcon:Landroid/widget/ImageView;

.field private mActivity:Landroid/app/Activity;

.field private mBlockEventView:Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;

.field private mCancelImageButton:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIdleLinearLayout:Landroid/widget/LinearLayout;

.field private mNameTextView:Landroid/widget/TextView;

.field private mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

.field private mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

.field private mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

.field private mPlaySeekBar:Landroid/widget/SeekBar;

.field private mPlayState:I

.field private mRecordImageButton:Landroid/widget/ImageButton;

.field private mRecordLinearLayout:Landroid/widget/LinearLayout;

.field private mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

.field private mSoundRecorderLayout:Landroid/widget/LinearLayout;

.field private mStopImageButton:Landroid/widget/ImageButton;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTimerFormat:Ljava/lang/String;

.field private mUpdatePlayRunnable:Ljava/lang/Runnable;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;

.field private playButton:Landroid/widget/ImageButton;

.field private playLayout:Landroid/widget/RelativeLayout;

.field private recordLayout:Landroid/widget/LinearLayout;

.field private stopButton:Landroid/widget/ImageButton;

.field private totalTimeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    .line 26
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    .line 59
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdatePlayRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$1;-><init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    .line 90
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    .line 91
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updateTimeTextView()V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    return-object v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    return v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    return-void
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updatePlayDisplay(Landroid/content/Context;)V

    return-void
.end method

.method private hideRecorderView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 234
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mBlockEventView:Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mBlockEventView:Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;->setVisibility(I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mSoundRecorderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mSoundRecorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    :cond_2
    return-void
.end method

.method private initLayoutView(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 2
    .parameter "context"
    .parameter "controlData"

    .prologue
    .line 309
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->fileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    .line 312
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600be

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;

    .line 315
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;-><init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 343
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playButton:Landroid/widget/ImageButton;

    .line 344
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 345
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playButton:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;-><init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600c1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopButton:Landroid/widget/ImageButton;

    .line 366
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopButton:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$5;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$5;-><init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->currentTime:Landroid/widget/TextView;

    .line 384
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->currentTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->allTime:Landroid/widget/TextView;

    .line 386
    return-void
.end method

.method private updateButtonDisplay()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 142
    sget v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mIdleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mIdleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePlayDisplay(Landroid/content/Context;)V
    .locals 11
    .parameter "mContext"

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, timerFormat:Ljava/lang/String;
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v0, 0x1

    .line 264
    .local v0, onGoing:Z
    :goto_0
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->totalTimeString:Ljava/lang/String;

    invoke-static {v7}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->getTimeLength(Ljava/lang/String;)J

    move-result-wide v5

    .line 265
    .local v5, totalTime:J
    if-eqz v0, :cond_4

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->playProgress()I

    move-result v7

    int-to-long v1, v7

    .line 267
    .local v1, time:J
    :goto_1
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v9, 0x3c

    div-long v9, v1, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    rem-long v9, v1, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, timeStr:Ljava/lang/String;
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    if-nez v7, :cond_5

    .line 270
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 271
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdatePlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    :cond_0
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->fileIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 274
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->fileIcon:Landroid/widget/ImageView;

    const v8, 0x7f020060

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    :cond_1
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    .line 277
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f060039

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const-string v8, "play"

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_2
    :goto_2
    return-void

    .line 262
    .end local v0           #onGoing:Z
    .end local v1           #time:J
    .end local v3           #timeStr:Ljava/lang/String;
    .end local v5           #totalTime:J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #onGoing:Z
    .restart local v5       #totalTime:J
    :cond_4
    move-wide v1, v5

    .line 265
    goto :goto_1

    .line 281
    .restart local v1       #time:J
    .restart local v3       #timeStr:Ljava/lang/String;
    :cond_5
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 282
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->playProgress()I

    move-result v7

    int-to-long v1, v7

    .line 283
    cmp-long v7, v1, v5

    if-lez v7, :cond_6

    .line 284
    move-wide v1, v5

    .line 286
    :cond_6
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v9, 0x3c

    div-long v9, v1, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    rem-long v9, v1, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 287
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->allTime:Landroid/widget/TextView;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->totalTimeString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v1

    div-long/2addr v8, v5

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    .line 291
    :cond_7
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 292
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->allTime:Landroid/widget/TextView;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->totalTimeString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v1

    div-long/2addr v8, v5

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 295
    cmp-long v7, v1, v5

    if-ltz v7, :cond_8

    .line 296
    const-string v7, "zhangxue"

    const-string v8, "time >= totalTime"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->currentTime:Landroid/widget/TextView;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->totalTimeString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v7, 0x0

    iput v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    .line 303
    :cond_8
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdatePlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2
.end method

.method private updateTimeTextView()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 247
    sget v4, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    if-ne v4, v10, :cond_1

    move v0, v5

    .line 249
    .local v0, onGoing:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->progress()I

    move-result v4

    :goto_1
    int-to-long v1, v4

    .line 250
    .local v1, time:J
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimerFormat:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    div-long v8, v1, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    rem-long v8, v1, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, timeStr:Ljava/lang/String;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    sget v4, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    if-ne v4, v10, :cond_0

    .line 254
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    :cond_0
    return-void

    .end local v0           #onGoing:Z
    .end local v1           #time:J
    .end local v3           #timeStr:Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 247
    goto :goto_0

    .line 249
    .restart local v0       #onGoing:Z
    :cond_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->sampleLength()I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public getPlayState()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    return v0
.end method

.method public initSoundRecord(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 94
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

    .line 95
    const/4 v0, 0x1

    sput v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$2;-><init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 103
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initView()V

    .line 104
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updateButtonDisplay()V

    .line 105
    return-void
.end method

.method public initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mBlockEventView:Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;

    .line 110
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mBlockEventView:Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;

    invoke-virtual {v0, v4}, Lzte/com/cn/cloudnotepad/skitch/view/MyBlockEventView;->setVisibility(I)V

    .line 113
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    .line 114
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setOnStateChangedListener(Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;)V

    .line 115
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimerFormat:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mSoundRecorderLayout:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mSoundRecorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mIdleLinearLayout:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordLinearLayout:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mNameTextView:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mNameTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getRecordFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06008b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimerFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06008d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordImageButton:Landroid/widget/ImageButton;

    .line 132
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mStopImageButton:Landroid/widget/ImageButton;

    .line 135
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mStopImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mCancelImageButton:Landroid/widget/ImageButton;

    .line 138
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mCancelImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 218
    const/4 v0, 0x0

    sput v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    .line 219
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->cancel()V

    .line 224
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    .line 229
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->hideRecorderView()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/16 v2, 0x80

    .line 167
    const-string v0, "zhangxue"

    const-string v1, "SoundRecorderView onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordImageButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 169
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 172
    const/4 v0, 0x2

    sput v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    .line 173
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updateButtonDisplay()V

    .line 174
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->startRecording()V

    .line 175
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updateTimeTextView()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mStopImageButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onStop()V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mCancelImageButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onCancel()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 193
    const/4 v0, 0x0

    sput v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    .line 194
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 199
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    .line 204
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->hideRecorderView()V

    .line 208
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

    const-string v1, "00:01"

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;->onStop(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mOnSoundRecorderListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;->onStop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playSoundRecord(Landroid/content/Context;Landroid/widget/LinearLayout;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 4
    .parameter "context"
    .parameter "layout"
    .parameter "controlData"

    .prologue
    .line 389
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    .line 391
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    .line 392
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    .line 393
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->fileIcon:Landroid/widget/ImageView;

    .line 394
    invoke-direct {p0, p1, p3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initLayoutView(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 395
    const-string v0, "zhangxue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controlData.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->totalTimeString:Ljava/lang/String;

    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    .line 399
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;

    invoke-direct {v0, p0, p1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;-><init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdatePlayRunnable:Ljava/lang/Runnable;

    .line 405
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->startPlayback(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updatePlayDisplay(Landroid/content/Context;)V

    .line 407
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 152
    sput p1, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mRecordState:I

    .line 153
    return-void
.end method

.method public stopPlay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stopPlayback()V

    .line 412
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    .line 414
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mUpdatePlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mHandler:Landroid/os/Handler;

    .line 418
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->fileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->recordLayout:Landroid/widget/LinearLayout;

    .line 427
    :cond_2
    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I

    .line 428
    return-void
.end method
