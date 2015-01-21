.class public Lcom/android/camera/manager/RecordingView;
.super Lcom/android/camera/manager/ViewManager;
.source "RecordingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "RecordingView"


# instance fields
.field private mCurrent:J

.field private mListener:Landroid/view/View$OnClickListener;

.field private mMax:I

.field private mPauseResume:Landroid/widget/ImageView;

.field private mPauseResumeVisible:Z

.field private mProgress:I

.field private mRecordingSizeCurrent:Landroid/widget/TextView;

.field private mRecordingSizeGroup:Landroid/view/View;

.field private mRecordingSizeTotal:Landroid/widget/TextView;

.field private mRecordingSizeVisible:Z

.field private mRecordingTime:Landroid/widget/TextView;

.field private mRecordinging:Z

.field private mRecrodingSizeProgress:Landroid/widget/SeekBar;

.field private mTimeText:Ljava/lang/String;

.field private mTimeVisible:Z

.field private mTotal:J


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/manager/RecordingView;->mMax:I

    .line 43
    return-void
.end method

.method private formatTime(JZ)Ljava/lang/String;
    .locals 11
    .parameter "millis"
    .parameter "showMillis"

    .prologue
    .line 138
    long-to-int v6, p1

    div-int/lit16 v5, v6, 0x3e8

    .line 139
    .local v5, totalSeconds:I
    const-wide/16 v6, 0x3e8

    rem-long v6, p1, v6

    long-to-int v6, v6

    div-int/lit8 v1, v6, 0xa

    .line 140
    .local v1, millionSeconds:I
    rem-int/lit8 v3, v5, 0x3c

    .line 141
    .local v3, seconds:I
    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v2, v6, 0x3c

    .line 142
    .local v2, minutes:I
    div-int/lit16 v0, v5, 0xe10

    .line 143
    .local v0, hours:I
    const/4 v4, 0x0

    .line 144
    .local v4, text:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 145
    if-lez v0, :cond_0

    .line 146
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%d:%02d:%02d.%02d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 157
    :goto_0
    const-string v6, "RecordingView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatTime("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v4

    .line 148
    :cond_0
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%02d:%02d.%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 151
    :cond_1
    if-lez v0, :cond_2

    .line 152
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 154
    :cond_2
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getFileSize(J)Ljava/lang/String;
    .locals 4
    .parameter "size"

    .prologue
    .line 218
    const-wide/16 v2, 0x400

    div-long v0, p1, v2

    .line 219
    .local v0, kb:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getRecording()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 47
    const v1, 0x7f040054

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeGroup:Landroid/view/View;

    .line 53
    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeCurrent:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeTotal:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    .line 56
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/manager/RecordingView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/manager/RecordingView$1;-><init>(Lcom/android/camera/manager/RecordingView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/camera/manager/RecordingView;->mMax:I

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 65
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/camera/manager/RecordingView;->mProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    :cond_0
    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/RecordingView;->setSizeProgress(I)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onRefresh()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 72
    const-string v2, "RecordingView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefresh() mCurrent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/manager/RecordingView;->mCurrent:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTotal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/manager/RecordingView;->mTotal:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mProgress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/manager/RecordingView;->mProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMax="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/manager/RecordingView;->mMax:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecordinging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const v1, 0x7f020119

    .line 75
    .local v1, recordingId:I
    const v0, 0x7f02011c

    .line 76
    .local v0, playpauseid:I
    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    if-eqz v2, :cond_0

    .line 77
    const v1, 0x7f02011a

    .line 78
    const v0, 0x7f02011b

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/manager/RecordingView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeCurrent:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeCurrent:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/android/camera/manager/RecordingView;->mCurrent:J

    invoke-direct {p0, v3, v4}, Lcom/android/camera/manager/RecordingView;->getFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeTotal:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeTotal:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/android/camera/manager/RecordingView;->mTotal:J

    invoke-direct {p0, v3, v4}, Lcom/android/camera/manager/RecordingView;->getFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    if-eqz v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/camera/manager/RecordingView;->mMax:I

    invoke-virtual {v2, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 96
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/camera/manager/RecordingView;->mProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mTimeVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/RecordingView;->setTimeVisible(Z)V

    .line 99
    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mPauseResumeVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/RecordingView;->setPauseResumeVisible(Z)V

    .line 100
    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/RecordingView;->setRecordingSizeVisible(Z)V

    .line 101
    return-void
.end method

.method public setCurrentSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 186
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-wide p1, p0, Lcom/android/camera/manager/RecordingView;->mCurrent:J

    .line 188
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeCurrent:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/camera/manager/RecordingView;->mCurrent:J

    invoke-direct {p0, v1, v2}, Lcom/android/camera/manager/RecordingView;->getFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/manager/RecordingView;->mListener:Landroid/view/View$OnClickListener;

    .line 118
    return-void
.end method

.method public setMaxSize(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 202
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput p1, p0, Lcom/android/camera/manager/RecordingView;->mMax:I

    .line 204
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/manager/RecordingView;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public setPauseResumeVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 162
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseResumeVisible("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mPauseResumeVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mPauseResumeVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-boolean p1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResumeVisible:Z

    .line 164
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_0
    return-void

    .line 165
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setRecordingIndicator(Z)V
    .locals 3
    .parameter "recording"

    .prologue
    .line 121
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingIndicator("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-boolean p1, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 124
    return-void
.end method

.method public setRecordingSizeVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 178
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingSizeVisible("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mRecordingSizeVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-boolean p1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeVisible:Z

    .line 180
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeGroup:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_0
    return-void

    .line 181
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSizeProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 210
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSizeProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput p1, p0, Lcom/android/camera/manager/RecordingView;->mProgress:I

    .line 212
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecrodingSizeProgress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/manager/RecordingView;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public setTimeVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 170
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeVisible("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mTimeVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mTimeVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/manager/RecordingView;->mTimeVisible:Z

    .line 172
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setTotalSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 194
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTotalSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-wide p1, p0, Lcom/android/camera/manager/RecordingView;->mTotal:J

    .line 196
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingSizeTotal:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/camera/manager/RecordingView;->mTotal:J

    invoke-direct {p0, v1, v2}, Lcom/android/camera/manager/RecordingView;->getFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    return-void
.end method

.method public showTime(JZ)V
    .locals 2
    .parameter "millis"
    .parameter "showMillis"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/manager/RecordingView;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/RecordingView;->mTimeText:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    return-void
.end method
