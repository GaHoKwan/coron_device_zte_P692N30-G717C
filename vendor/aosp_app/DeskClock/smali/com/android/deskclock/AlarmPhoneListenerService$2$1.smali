.class Lcom/android/deskclock/AlarmPhoneListenerService$2$1;
.super Ljava/lang/Object;
.source "AlarmPhoneListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmPhoneListenerService$2;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmPhoneListenerService$2;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmPhoneListenerService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2$1;->this$1:Lcom/android/deskclock/AlarmPhoneListenerService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2$1;->this$1:Lcom/android/deskclock/AlarmPhoneListenerService$2;

    iget-object v0, v0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #getter for: Lcom/android/deskclock/AlarmPhoneListenerService;->mAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$100(Lcom/android/deskclock/AlarmPhoneListenerService;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService$2$1;->this$1:Lcom/android/deskclock/AlarmPhoneListenerService$2;

    iget-object v0, v0, Lcom/android/deskclock/AlarmPhoneListenerService$2;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #calls: Lcom/android/deskclock/AlarmPhoneListenerService;->sendStartAlarmBroadcast()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$200(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    .line 137
    :cond_0
    return-void
.end method
