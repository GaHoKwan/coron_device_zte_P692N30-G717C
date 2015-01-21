.class Lcom/android/soundrecorder/SoundRecorderService$1;
.super Ljava/lang/Object;
.source "SoundRecorderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 122
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "run()-mUpdateTimer running"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$000(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorderService;->access$200(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/RemainingTimeCalculator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining(Z)J

    move-result-wide v3

    #setter for: Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J
    invoke-static {v2, v3, v4}, Lcom/android/soundrecorder/SoundRecorderService;->access$102(Lcom/android/soundrecorder/SoundRecorderService;J)J

    .line 125
    const-string v2, "SR/SoundRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run()-mRemainingTime is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J
    invoke-static {v4}, Lcom/android/soundrecorder/SoundRecorderService;->access$100(Lcom/android/soundrecorder/SoundRecorderService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mRemainingTime:J
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$100(Lcom/android/soundrecorder/SoundRecorderService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$000(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 128
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "run()-stopRecordingAsync case1"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v2}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    .line 146
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentState:I
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$000(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 131
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "run()-stopRecordingAsync case2"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v2}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecordingAsync()V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$300(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v2}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentProgressInSecond()I

    move-result v1

    .line 138
    .local v1, time:I
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mOnUpdateTimeViewListener:Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$300(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/soundrecorder/SoundRecorderService$OnUpdateTimeViewListener;->updateTimerView(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1           #time:I
    :cond_3
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$500(Lcom/android/soundrecorder/SoundRecorderService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorderService$1;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mUpdateTimer:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorderService;->access$400(Lcom/android/soundrecorder/SoundRecorderService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "SR/SoundRecorderService"

    const-string v3, "run()-IllegalStateException"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
