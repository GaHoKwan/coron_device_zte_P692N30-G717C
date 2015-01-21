.class public Lcom/zte/backup/composer/mms/MmsBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "MmsBackupComposer.java"


# instance fields
.field mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    .line 41
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/mms/MmsBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 43
    new-instance v0, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    invoke-direct {v0, p1}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    .line 44
    const-string v0, "Mms"

    iput-object v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getBackupCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->totalNum:I

    .line 46
    iget-object v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;->getBackupDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->size:J

    .line 47
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 9

    .prologue
    .line 56
    iget v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->totalNum:I

    if-nez v7, :cond_1

    .line 57
    const/16 v5, 0x2005

    .line 117
    :cond_0
    :goto_0
    return v5

    .line 60
    :cond_1
    const/16 v5, 0x2001

    .line 61
    .local v5, result:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsBackupComposer;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "mms.vmsg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, fileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 65
    .local v6, vmsgWriter:Ljava/io/Writer;
    :try_start_0
    new-instance v7, Lcom/zte/backup/cloudbackup/utils/FileHelper;

    iget-object v8, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/zte/backup/cloudbackup/utils/FileHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->creatFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 66
    .local v2, file:Ljava/io/File;
    new-instance v6, Ljava/io/OutputStreamWriter;

    .end local v6           #vmsgWriter:Ljava/io/Writer;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .restart local v6       #vmsgWriter:Ljava/io/Writer;
    const/4 v7, 0x0

    iput v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->curNum:I

    :goto_1
    iget v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->curNum:I

    iget v8, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->totalNum:I

    if-lt v7, v8, :cond_3

    .line 104
    :goto_2
    const/16 v7, 0x2001

    if-ne v5, v7, :cond_2

    .line 105
    iget-object v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v7, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 108
    :cond_2
    if-eqz v6, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/io/IOException;
    const/16 v5, 0x2002

    .line 113
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v6           #vmsgWriter:Ljava/io/Writer;
    :catch_1
    move-exception v1

    .line 68
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 69
    const/16 v5, 0x2002

    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #vmsgWriter:Ljava/io/Writer;
    :cond_3
    iget-object v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v7, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 74
    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsBackupComposer;->isCancel()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 75
    iget-object v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 76
    const/16 v5, 0x2003

    .line 77
    goto :goto_2

    .line 79
    :cond_4
    const/4 v0, 0x0

    .line 81
    .local v0, Str:Ljava/lang/String;
    :try_start_2
    iget-object v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->mms:Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;

    iget v8, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->curNum:I

    invoke-static {v7, v8}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->export1MmsVmsgStr(Lcom/zte/backup/format/vxx/vmsg/MessageMmsInterface;I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    const/16 v5, 0x2002

    .line 100
    const/4 v0, 0x0

    .line 84
    goto :goto_2

    .line 88
    :cond_5
    :try_start_3
    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    .line 101
    :goto_3
    iget v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->curNum:I

    add-int/lit8 v7, v7, 0x1

    .line 72
    iput v7, p0, Lcom/zte/backup/composer/mms/MmsBackupComposer;->curNum:I

    goto :goto_1

    .line 90
    :catch_2
    move-exception v1

    .line 91
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    const/16 v5, 0x2002

    .line 100
    const/4 v0, 0x0

    .line 93
    goto :goto_2

    .line 96
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 97
    .local v4, memErr:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    const/4 v0, 0x0

    goto :goto_3

    .line 99
    .end local v4           #memErr:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 100
    const/4 v0, 0x0

    .line 101
    throw v7
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "Mms"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
