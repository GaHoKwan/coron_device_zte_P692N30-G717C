.class public Lcom/zte/backup/composer/sms/SmsBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "SmsBackupComposer.java"


# instance fields
.field sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    .line 33
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/sms/SmsBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 36
    new-instance v0, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    invoke-direct {v0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    .line 37
    const-string v0, "Sms"

    iput-object v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->name:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getBackupCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->totalNum:I

    .line 39
    iget-object v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->getBackupDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->size:J

    .line 40
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 8

    .prologue
    .line 57
    iget v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->totalNum:I

    if-nez v6, :cond_1

    .line 58
    const/16 v4, 0x2005

    .line 109
    :cond_0
    :goto_0
    return v4

    .line 61
    :cond_1
    const/16 v4, 0x2001

    .line 62
    .local v4, result:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsBackupComposer;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "sms.vmsg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, vmsgWriter:Ljava/io/Writer;
    :try_start_0
    new-instance v6, Lcom/zte/backup/cloudbackup/utils/FileHelper;

    iget-object v7, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/zte/backup/cloudbackup/utils/FileHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->creatFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 67
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/OutputStreamWriter;

    .end local v5           #vmsgWriter:Ljava/io/Writer;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .restart local v5       #vmsgWriter:Ljava/io/Writer;
    const/4 v6, 0x0

    iput v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->curNum:I

    :goto_1
    iget v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->curNum:I

    iget v7, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->totalNum:I

    if-lt v6, v7, :cond_3

    .line 96
    :goto_2
    const/16 v6, 0x2001

    if-ne v4, v6, :cond_2

    .line 97
    iget-object v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v6, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 100
    :cond_2
    if-eqz v5, :cond_0

    .line 102
    :try_start_1
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    const/16 v4, 0x2002

    .line 105
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #vmsgWriter:Ljava/io/Writer;
    :catch_1
    move-exception v1

    .line 69
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 70
    const/16 v4, 0x2002

    goto :goto_0

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #vmsgWriter:Ljava/io/Writer;
    :cond_3
    iget-object v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v6, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 75
    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsBackupComposer;->isCancel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 76
    iget-object v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 77
    const/16 v4, 0x2003

    .line 78
    goto :goto_2

    .line 81
    :cond_4
    iget-object v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->sms:Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;

    iget v7, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->curNum:I

    invoke-static {v6, v7}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->export1SmsVmsgStr(Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, Str:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 83
    const/16 v4, 0x2002

    .line 84
    goto :goto_2

    .line 88
    :cond_5
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    iget v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->curNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/zte/backup/composer/sms/SmsBackupComposer;->curNum:I

    goto :goto_1

    .line 89
    :catch_2
    move-exception v1

    .line 90
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 91
    const/16 v4, 0x2002

    .line 92
    goto :goto_2
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "Sms"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
