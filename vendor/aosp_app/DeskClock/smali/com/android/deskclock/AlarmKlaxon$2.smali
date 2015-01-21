.class Lcom/android/deskclock/AlarmKlaxon$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 131
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "ignored"

    .prologue
    const/4 v7, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, newPhoneState:I
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$300(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 141
    :try_start_0
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$300(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 148
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallStateChanged : current state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mInitialCallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentCallState:I
    invoke-static {v6}, Lcom/android/deskclock/AlarmKlaxon;->access$400(Lcom/android/deskclock/AlarmKlaxon;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 150
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentCallState:I
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$400(Lcom/android/deskclock/AlarmKlaxon;)I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call state changed: mInitialCallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentCallState:I
    invoke-static {v6}, Lcom/android/deskclock/AlarmKlaxon;->access$400(Lcom/android/deskclock/AlarmKlaxon;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mCurrentAlarm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v6}, Lcom/android/deskclock/AlarmKlaxon;->access$500(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 158
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 161
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 162
    .local v4, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    .line 169
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 170
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$500(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    .line 171
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.deskclock.ALARM_PHONE_LISTENER"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, phoneListenerIntent:Landroid/content/Intent;
    const-string v5, "intent.extra.alarm"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    iget-object v5, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/deskclock/AlarmKlaxon;->access$200(Lcom/android/deskclock/AlarmKlaxon;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    const-string v5, "alarm phone listener service starts"

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 177
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    .end local v3           #phoneListenerIntent:Landroid/content/Intent;
    .end local v4           #vibrator:Landroid/os/Vibrator;
    :cond_2
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Catch exception when getPreciseCallState: ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
