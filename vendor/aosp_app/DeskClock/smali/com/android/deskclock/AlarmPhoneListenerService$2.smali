.class Lcom/android/deskclock/AlarmPhoneListenerService$2;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmPhoneListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmPhoneListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmPhoneListenerService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmPhoneListenerService;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "ignored"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SIM1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState1:I
    invoke-static {v7}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$400(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState2:I
    invoke-static {v7}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$500(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState:I
    invoke-static {v7}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$000(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 115
    iget-object v6, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState:I
    invoke-static {v6}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$000(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState1:I
    invoke-static {v6}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$400(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState2:I
    invoke-static {v6}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$500(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 119
    .local v2, sipCallActive:Z
    :goto_0
    iget-object v6, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState1:I
    invoke-static {v6}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$400(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 121
    .local v1, sim1Active:Z
    :goto_1
    const/4 v3, 0x0

    .line 123
    .local v3, totalCallState:I
    :try_start_0
    iget-object v4, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v4}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$600(Lcom/android/deskclock/AlarmPhoneListenerService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 128
    :goto_2
    if-nez p1, :cond_0

    if-eqz v3, :cond_3

    .line 140
    :cond_0
    :goto_3
    return-void

    .end local v1           #sim1Active:Z
    .end local v2           #sipCallActive:Z
    .end local v3           #totalCallState:I
    :cond_1
    move v2, v5

    .line 115
    goto :goto_0

    .restart local v2       #sipCallActive:Z
    :cond_2
    move v1, v5

    .line 119
    goto :goto_1

    .line 124
    .restart local v1       #sim1Active:Z
    .restart local v3       #totalCallState:I
    :catch_0
    move-exception v0

    .line 125
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Catch exception when getPreciseCallState: ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    .line 132
    :cond_4
    iget-object v4, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$300(Lcom/android/deskclock/AlarmPhoneListenerService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/deskclock/AlarmPhoneListenerService$2$1;

    invoke-direct {v5, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$2$1;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService$2;)V

    const-wide/16 v6, 0x384

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method
