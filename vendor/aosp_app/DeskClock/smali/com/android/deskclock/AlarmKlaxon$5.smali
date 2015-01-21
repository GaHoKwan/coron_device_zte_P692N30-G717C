.class Lcom/android/deskclock/AlarmKlaxon$5;
.super Landroid/content/BroadcastReceiver;
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
    .line 670
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 673
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/deskclock/AlarmKlaxon;->access$1000(Lcom/android/deskclock/AlarmKlaxon;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->backupRingtoneForPoweroffAlarm(Landroid/content/Context;Landroid/os/Handler;)V

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    const-string v0, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$500(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/deskclock/Alarms;->snooze(Landroid/content/Context;Lcom/android/deskclock/Alarm;)V

    .line 680
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #setter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0, v2}, Lcom/android/deskclock/AlarmKlaxon;->access$502(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;

    goto :goto_0

    .line 681
    :cond_3
    const-string v0, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$500(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/Alarms;->dismiss(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 683
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$5;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #setter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v0, v2}, Lcom/android/deskclock/AlarmKlaxon;->access$502(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;

    goto :goto_0
.end method
