.class Lcom/android/deskclock/AlarmPhoneListenerService$3;
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
    .line 143
    iput-object p1, p0, Lcom/android/deskclock/AlarmPhoneListenerService$3;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 146
    if-eqz p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService$3;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mCurrentCallState2:I
    invoke-static {v0}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$500(Lcom/android/deskclock/AlarmPhoneListenerService;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService$3;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$300(Lcom/android/deskclock/AlarmPhoneListenerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/deskclock/AlarmPhoneListenerService$3$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmPhoneListenerService$3$1;-><init>(Lcom/android/deskclock/AlarmPhoneListenerService$3;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
