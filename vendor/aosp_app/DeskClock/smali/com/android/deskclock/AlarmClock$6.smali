.class Lcom/android/deskclock/AlarmClock$6;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm(Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$6;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1258
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$6;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncAddAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/AlarmClock;->access$500(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    .line 1259
    sget v1, Lcom/android/deskclock/AlarmKlaxon;->mCurrentPlayingAlarmId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClock;->access$400(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    sget v2, Lcom/android/deskclock/AlarmKlaxon;->mCurrentPlayingAlarmId:I

    if-ne v1, v2, :cond_0

    .line 1261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "disable_or_enable_snooze_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v0, enableSnoozeNotification:Landroid/content/Intent;
    const-string v1, "intent.extra.alarm"

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$400(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/Alarm;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1263
    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1264
    const-string v1, "alarmID"

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$400(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/Alarm;

    move-result-object v2

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    const-string v1, "alarm"

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$400(Lcom/android/deskclock/AlarmClock;)Lcom/android/deskclock/Alarm;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1266
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1268
    .end local v0           #enableSnoozeNotification:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    const/4 v2, 0x0

    #setter for: Lcom/android/deskclock/AlarmClock;->mDeletedAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmClock;->access$402(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/Alarm;

    .line 1269
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$6;->this$0:Lcom/android/deskclock/AlarmClock;

    #setter for: Lcom/android/deskclock/AlarmClock;->mUndoShowing:Z
    invoke-static {v1, v3}, Lcom/android/deskclock/AlarmClock;->access$602(Lcom/android/deskclock/AlarmClock;Z)Z

    .line 1270
    return-void
.end method
