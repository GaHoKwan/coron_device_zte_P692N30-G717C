.class public Lcom/zte/zdmdaemon/ZdmDaemon;
.super Landroid/app/Service;
.source "ZdmDaemon.java"


# static fields
.field public static final DELTA_FILE:Ljava/lang/String; = "com.zte.zdmdaemon.DELTA_FILE"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final OPERATION:Ljava/lang/String; = "OPERATION"

.field public static final RECOVERY_REBOOT:Ljava/lang/String; = "com.zte.zdmdaemon.RECOVERY_REBOOT"


# instance fields
.field private COMMAND_FILE:Ljava/io/File;

.field private RECOVERY_DIR:Ljava/io/File;

.field private mRedelivery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "ZdmDaemon"

    sput-object v0, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->RECOVERY_DIR:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->COMMAND_FILE:Ljava/io/File;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->mRedelivery:Z

    .line 33
    return-void
.end method

.method private handleCommand(Landroid/content/Intent;)I
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 80
    sget-object v8, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[ZdmDaemon]handleCommand"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez p1, :cond_2

    .line 82
    iget-boolean v8, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->mRedelivery:Z

    if-eqz v8, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    const-string v8, "OPERATION"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, operation:Ljava/lang/String;
    const-string v8, "com.zte.zdmdaemon.DELTA_FILE"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, delta:Ljava/lang/String;
    sget-object v8, Lcom/zte/zdmdaemon/redbend/Fota;->UpdateTypeName:Ljava/lang/String;

    .line 87
    sget v9, Lcom/zte/zdmdaemon/redbend/Fota;->DefaultValue:I

    .line 86
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 88
    .local v5, updateTypeValue:I
    sget-object v8, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[ZdmDaemon]OPERATION : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v8, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[ZdmDaemon]DELTA_FILE : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v8, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[ZdmDaemon]updateTypeValue : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "--update_package=/cache/update.zip"

    .line 95
    .local v0, defalutDelta:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 96
    iget-boolean v8, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->mRedelivery:Z

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 99
    :cond_3
    const-string v8, "com.zte.zdmdaemon.RECOVERY_REBOOT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    sget v8, Lcom/zte/zdmdaemon/redbend/Fota;->DefaultValue:I

    if-eq v5, v8, :cond_5

    .line 101
    new-instance v4, Lcom/zte/zdmdaemon/redbend/Fota;

    invoke-direct {v4}, Lcom/zte/zdmdaemon/redbend/Fota;-><init>()V

    .line 102
    .local v4, redbend:Lcom/zte/zdmdaemon/redbend/Fota;
    invoke-virtual {v4, v5}, Lcom/zte/zdmdaemon/redbend/Fota;->prepare(I)V

    .line 104
    :try_start_0
    invoke-virtual {v4, v1, p0}, Lcom/zte/zdmdaemon/redbend/Fota;->reboot(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0           #defalutDelta:Ljava/lang/String;
    .end local v4           #redbend:Lcom/zte/zdmdaemon/redbend/Fota;
    :cond_4
    :goto_1
    iget-boolean v8, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->mRedelivery:Z

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 105
    .restart local v0       #defalutDelta:Ljava/lang/String;
    .restart local v4       #redbend:Lcom/zte/zdmdaemon/redbend/Fota;
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #redbend:Lcom/zte/zdmdaemon/redbend/Fota;
    :cond_5
    if-nez v1, :cond_6

    .end local v0           #defalutDelta:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/ZdmDaemon;->reboot(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0       #defalutDelta:Ljava/lang/String;
    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private reboot(Ljava/lang/String;)V
    .locals 6
    .parameter "arg"

    .prologue
    .line 136
    sget-object v4, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[ZdmDaemon]reboot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, command:Ljava/io/FileWriter;
    iget-object v4, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 139
    iget-object v4, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 141
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0           #command:Ljava/io/FileWriter;
    .local v1, command:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 143
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 145
    const-string v4, "sync"

    invoke-static {v4}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 152
    .end local v1           #command:Ljava/io/FileWriter;
    .restart local v0       #command:Ljava/io/FileWriter;
    :goto_0
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/zte/zdmdaemon/ZdmDaemon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 153
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "recovery"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 154
    sget-object v4, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[ZdmDaemon]reboot end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 147
    .end local v3           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Ljava/io/IOException;
    :goto_1
    sget-object v4, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[ZdmDaemon]IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0           #command:Ljava/io/FileWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #command:Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #command:Ljava/io/FileWriter;
    .restart local v0       #command:Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ZdmDaemon]onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 75
    sget-object v0, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ZdmDaemon]onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemon;->handleCommand(Landroid/content/Intent;)I

    .line 77
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 122
    sget-object v0, Lcom/zte/zdmdaemon/ZdmDaemon;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ZdmDaemon]onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/ZdmDaemon;->handleCommand(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/zte/zdmdaemon/ZdmDaemon;->mRedelivery:Z

    .line 65
    return-void
.end method
