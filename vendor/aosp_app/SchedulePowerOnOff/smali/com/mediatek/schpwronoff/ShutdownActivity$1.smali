.class Lcom/mediatek/schpwronoff/ShutdownActivity$1;
.super Landroid/os/CountDownTimer;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/schpwronoff/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/schpwronoff/ShutdownActivity;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    #getter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$200(Lcom/mediatek/schpwronoff/ShutdownActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "ShutdownActivity"

    const-string v1, "phone is incall, countdown end"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 101
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "ShutdownActivity"

    const-string v1, "count down timer arrived, shutdown phone"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    #calls: Lcom/mediatek/schpwronoff/ShutdownActivity;->fireShutDown()V
    invoke-static {v0}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$300(Lcom/mediatek/schpwronoff/ShutdownActivity;)V

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/schpwronoff/ShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 9
    .parameter "millisUntilFinished"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 86
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    div-long v1, p1, v7

    long-to-int v1, v1

    #setter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mSecondsCountdown:I
    invoke-static {v0, v1}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$002(Lcom/mediatek/schpwronoff/ShutdownActivity;I)I

    .line 87
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    #getter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mSecondsCountdown:I
    invoke-static {v0}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$000(Lcom/mediatek/schpwronoff/ShutdownActivity;)I

    move-result v0

    if-le v0, v5, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    iget-object v1, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    const v2, 0x7f070013

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    #getter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$000(Lcom/mediatek/schpwronoff/ShutdownActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$102(Lcom/mediatek/schpwronoff/ShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    :goto_0
    const-string v0, "ShutdownActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 94
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    iget-object v1, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    const v2, 0x7f070014

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/schpwronoff/ShutdownActivity$1;->this$0:Lcom/mediatek/schpwronoff/ShutdownActivity;

    #getter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$000(Lcom/mediatek/schpwronoff/ShutdownActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/schpwronoff/ShutdownActivity;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/schpwronoff/ShutdownActivity;->access$102(Lcom/mediatek/schpwronoff/ShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
