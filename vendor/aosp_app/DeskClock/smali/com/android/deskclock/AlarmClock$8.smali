.class Lcom/android/deskclock/AlarmClock$8;
.super Landroid/os/AsyncTask;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/deskclock/Alarm;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$popToast:Z


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;ZLcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$8;->this$0:Lcom/android/deskclock/AlarmClock;

    iput-boolean p2, p0, Lcom/android/deskclock/AlarmClock$8;->val$popToast:Z

    iput-object p3, p0, Lcom/android/deskclock/AlarmClock$8;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/deskclock/Alarm;)Ljava/lang/Long;
    .locals 8
    .parameter "alarms"

    .prologue
    .line 1307
    const-wide/16 v4, 0x0

    .line 1308
    .local v4, mSetAlarmOK:J
    move-object v1, p1

    .local v1, arr$:[Lcom/android/deskclock/Alarm;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1309
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$8;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-static {v6, v0}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v4

    .line 1310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncUpdateAlarm mSetAlarmOK = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1312
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1304
    check-cast p1, [Lcom/android/deskclock/Alarm;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$8;->doInBackground([Lcom/android/deskclock/Alarm;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "mSetAlarmOK"

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmClock$8;->val$popToast:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$8;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$8;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->popToast(Lcom/android/deskclock/Alarm;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClock;->access$2900(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;)V

    .line 1320
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1304
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$8;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
