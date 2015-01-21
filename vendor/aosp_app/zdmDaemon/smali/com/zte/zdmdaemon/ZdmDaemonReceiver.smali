.class public Lcom/zte/zdmdaemon/ZdmDaemonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZdmDaemonReceiver.java"


# static fields
.field public static final CONF_KEY_FORREDBEND:Ljava/lang/String; = "for_redbend"

.field public static final CONF_KEY_INIT_VALUE:Ljava/lang/String; = "init"

.field public static final CONF_KEY_NEED_COPY:Ljava/lang/String; = "copy"

.field public static final CONF_KEY_REPORT:Ljava/lang/String; = "report"

.field public static final CONF_KEY_REPORT_VALUE:Ljava/lang/String; = "status"

.field private static final GET_FUMO_RESULT:Ljava/lang/String; = "android.intent.action.GET_FUMO_RESULT"

.field public static final KEY_ZDM_DAEMON_PREFERENCES:Ljava/lang/String; = "zdmDaemon"

.field private static final KILL_ZDMAPP:Ljava/lang/String; = "android.intent.action.KILL_ZDMAPP"

.field private static final LOG_TAG:Ljava/lang/String; = "ZdmDaemonReceiver"

.field private static final RECOVERY_REBOOT:Ljava/lang/String; = "android.intent.action.RECOVERY_REBOOT"

.field private static final reportCode_action:Ljava/lang/String; = "com.zte.zdm.GOTA_CODE"

.field private static statusCode:[C


# instance fields
.field private final STATUS_CODE:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private copy:Z

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private forRedbend:Z

.field private initValue:I

.field private report:Z

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const-string v0, "statusCode"

    iput-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->STATUS_CODE:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 30
    return-void
.end method

.method private doReportStatus(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "ZdmDaemonReceiver"

    const-string v1, "[ZdmDaemonReceiver]enter doReportStatus "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->readStatusCodeAndSend(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method private declared-synchronized handleReportStatus(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 146
    :try_start_1
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->doReportStatus(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :try_start_2
    iget-object v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "report"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 156
    invoke-static {}, Lcom/zte/zdmdaemon/UpdateCode;->getInstance()Lcom/zte/zdmdaemon/UpdateCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdmdaemon/UpdateCode;->handleInitVariable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ZdmDaemonReceiver"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ZdmDaemonReceiver]doReportStatus ERROR! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    :try_start_4
    iget-object v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "report"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 156
    invoke-static {}, Lcom/zte/zdmdaemon/UpdateCode;->getInstance()Lcom/zte/zdmdaemon/UpdateCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdmdaemon/UpdateCode;->handleInitVariable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 152
    :catchall_1
    move-exception v1

    .line 153
    :try_start_5
    iget-object v2, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "report"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v2, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 156
    invoke-static {}, Lcom/zte/zdmdaemon/UpdateCode;->getInstance()Lcom/zte/zdmdaemon/UpdateCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdmdaemon/UpdateCode;->handleInitVariable()V

    .line 157
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private initSharedPreference(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->copyConfigFileFromCache()V

    .line 139
    const-string v0, "zdmDaemon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    .line 140
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    .line 141
    return-void
.end method

.method private isSuccessful()Z
    .locals 5

    .prologue
    const/16 v4, 0x5a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    sget-object v2, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    aget-char v2, v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    aget-char v2, v2, v0

    if-nez v2, :cond_0

    sget-object v2, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    const/4 v3, 0x2

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    const/4 v3, 0x3

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private killZdmApp(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 309
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 310
    .local v0, manager:Landroid/app/ActivityManager;
    const-string v1, "com.zte.zdm"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 311
    const-string v1, "ZdmDaemonReceiver"

    const-string v2, "exitApplication"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method private loadConfigReport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 88
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "init"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->initValue:I

    .line 89
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "copy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->copy:Z

    .line 90
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "for_redbend"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->forRedbend:Z

    .line 91
    return-void
.end method

.method private readStatusCodeAndSend(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    iget-boolean v1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->forRedbend:Z

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Lcom/zte/zdmdaemon/redbend/Fota;

    invoke-direct {v1}, Lcom/zte/zdmdaemon/redbend/Fota;-><init>()V

    invoke-virtual {v1}, Lcom/zte/zdmdaemon/redbend/Fota;->readUpdateStatus()[C

    move-result-object v1

    sput-object v1, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    .line 214
    :goto_0
    const-string v1, "ZdmDaemonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ZdmDaemonReceiver]read statusCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    sget-object v3, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    const/4 v4, 0x1

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    sget-object v3, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    const/4 v4, 0x2

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    const/4 v4, 0x3

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, ""

    .line 218
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    const-string v0, "Successful"

    .line 220
    const-string v1, "ZdmDaemonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ZdmDaemonReceiver]sendStatusBroadCast result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->sendStatusBroadCast(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    :goto_1
    return-void

    .line 212
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/zte/zdmdaemon/UpdateCode;->getInstance()Lcom/zte/zdmdaemon/UpdateCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdmdaemon/UpdateCode;->readUpdateStatus()[C

    move-result-object v1

    sput-object v1, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    goto :goto_0

    .line 224
    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    const-string v0, "Dismatch"

    .line 225
    const-string v1, "ZdmDaemonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ZdmDaemonReceiver]sendStatusBroadCast result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->sendStatusBroadCast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveReportStatus(Z)V
    .locals 2
    .parameter "report"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "report"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method private sendStatusBroadCast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "result"

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, statusIntent:Landroid/content/Intent;
    const-string v1, "com.zte.zdm.GOTA_CODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v1, "error_code"

    sget-object v2, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->statusCode:[C

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    const-string v1, "ZdmDaemonReceiver"

    const-string v2, "[ZdmDaemonReceiver]sended com.zte.zdm.GOTA_CODE broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method private startServiceforReboot(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "com.zte.zdmdaemon.ZdmDaemon"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "OPERATION"

    const-string v3, "com.zte.zdmdaemon.RECOVERY_REBOOT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v2, "com.zte.zdmdaemon.DELTA_FILE"

    .line 255
    const-string v3, "com.zte.zdmdaemon.DELTA_FILE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    sget-object v2, Lcom/zte/zdmdaemon/redbend/Fota;->UpdateTypeName:Ljava/lang/String;

    .line 257
    sget-object v3, Lcom/zte/zdmdaemon/redbend/Fota;->UpdateTypeName:Ljava/lang/String;

    sget v4, Lcom/zte/zdmdaemon/redbend/Fota;->DefaultValue:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    sget-object v2, Lcom/zte/zdmdaemon/redbend/Fota;->UpdateTypeName:Ljava/lang/String;

    sget v3, Lcom/zte/zdmdaemon/redbend/Fota;->DefaultValue:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/zte/zdmdaemon/redbend/Fota;->DefaultValue:I

    if-eq v2, v3, :cond_0

    .line 259
    iget-object v2, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "for_redbend"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    iget-object v2, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    :cond_0
    const-string v0, "NeedBackUp"

    .line 264
    .local v0, KEY_NEEDBACKUP:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->copyConfigFileToCache()V

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    return-void
.end method


# virtual methods
.method copyConfigFileFromCache()V
    .locals 8

    .prologue
    .line 284
    const-string v5, "shared_prefs"

    .line 285
    .local v5, destFilePath:Ljava/lang/String;
    const-string v4, "zdmDaemon.xml"

    .line 286
    .local v4, destFileName:Ljava/lang/String;
    const-string v2, "/data/data"

    .line 287
    .local v2, dataPathString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, desFile:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/cache/fota/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, ConfigCache_1:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/cache/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, ConfigCache_2:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    invoke-static {v0, v3}, Lcom/zte/zdmdaemon/util/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    invoke-static {v1, v3}, Lcom/zte/zdmdaemon/util/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    :cond_1
    invoke-static {v0}, Lcom/zte/zdmdaemon/util/FileManager;->deleteFile(Ljava/lang/String;)V

    .line 298
    invoke-static {v1}, Lcom/zte/zdmdaemon/util/FileManager;->deleteFile(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method copyConfigFileToCache()V
    .locals 8

    .prologue
    .line 271
    const-string v4, "shared_prefs"

    .line 272
    .local v4, destFilePath:Ljava/lang/String;
    const-string v3, "zdmDaemon.xml"

    .line 273
    .local v3, destFileName:Ljava/lang/String;
    const-string v2, "/data/data"

    .line 274
    .local v2, dataPathString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 274
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, srcFile:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/cache/fota/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, ConfigCache_1:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/cache/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, ConfigCache_2:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/zte/zdmdaemon/util/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 279
    invoke-static {v5, v1}, Lcom/zte/zdmdaemon/util/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public final isReport()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->context:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->initSharedPreference(Landroid/content/Context;)V

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "ZdmDaemonReceiver"

    const-string v1, "[ZdmDaemonReceiver]recv ACTION_BOOT_COMPLETED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->loadConfigReport()V

    .line 103
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->handleReportStatus(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/zte/zdmdaemon/UpdateCode;->getInstance()Lcom/zte/zdmdaemon/UpdateCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdmdaemon/UpdateCode;->chmodFileMod()V

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RECOVERY_REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-static {}, Lcom/zte/zdmdaemon/UpdateCode;->getInstance()Lcom/zte/zdmdaemon/UpdateCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdmdaemon/UpdateCode;->handleInitVariable()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 109
    iget-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->saveReportStatus(Z)V

    .line 110
    invoke-direct {p0, p2}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->startServiceforReboot(Landroid/content/Intent;)V

    .line 112
    :cond_2
    const-string v0, "android.intent.action.KILL_ZDMAPP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->killZdmApp(Landroid/content/Context;)V

    .line 115
    :cond_3
    return-void
.end method

.method public final setReport(Z)V
    .locals 0
    .parameter "report"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/zte/zdmdaemon/ZdmDaemonReceiver;->report:Z

    .line 70
    return-void
.end method
