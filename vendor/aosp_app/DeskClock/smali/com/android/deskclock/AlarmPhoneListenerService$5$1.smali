.class Lcom/android/deskclock/AlarmPhoneListenerService$5$1;
.super Ljava/lang/Object;
.source "AlarmPhoneListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmPhoneListenerService$5;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmPhoneListenerService$5;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmPhoneListenerService$5;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/deskclock/AlarmPhoneListenerService$5$1;->this$1:Lcom/android/deskclock/AlarmPhoneListenerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/deskclock/AlarmPhoneListenerService$5$1;->this$1:Lcom/android/deskclock/AlarmPhoneListenerService$5;

    iget-object v0, v0, Lcom/android/deskclock/AlarmPhoneListenerService$5;->this$0:Lcom/android/deskclock/AlarmPhoneListenerService;

    #calls: Lcom/android/deskclock/AlarmPhoneListenerService;->sendStartAlarmBroadcast()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmPhoneListenerService;->access$200(Lcom/android/deskclock/AlarmPhoneListenerService;)V

    .line 184
    return-void
.end method
