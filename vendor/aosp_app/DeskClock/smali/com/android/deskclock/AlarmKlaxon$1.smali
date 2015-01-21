.class Lcom/android/deskclock/AlarmKlaxon$1;
.super Landroid/os/Handler;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 108
    :sswitch_0
    sget-boolean v0, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "*********** Alarm killer triggered ***********"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmKlaxon;->stopPlayAlert(Lcom/android/deskclock/Alarm;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmKlaxon;->access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V

    goto :goto_0

    .line 115
    :sswitch_1
    const-string v0, "Alarm play external ringtone failed, retry to play after 1 seconds."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmKlaxon;->access$100(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V

    goto :goto_0

    .line 120
    :sswitch_2
    const-string v0, "stop alarmklaxon service ... "

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$200(Lcom/android/deskclock/AlarmKlaxon;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/PowerOffAlarmService;->shutDown(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method
