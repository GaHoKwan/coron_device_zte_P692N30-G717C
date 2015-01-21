.class public Lcom/zte/backup/composer/mms/MmsRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "MmsRestoreComposer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 33
    const-string v0, "Mms"

    iput-object v0, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->name:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getMmsCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->totalNum:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->curNum:I

    .line 36
    return-void
.end method

.method private importMmsByVmsg(Ljava/io/BufferedReader;)I
    .locals 6
    .parameter "reader"

    .prologue
    const/16 v5, 0x2001

    .line 92
    const/16 v2, 0x2001

    .line 94
    .local v2, result:I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, str:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eq v2, v5, :cond_2

    .line 127
    :cond_0
    :goto_1
    if-ne v2, v5, :cond_1

    .line 128
    iget-object v4, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v4, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 136
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    :goto_2
    return v2

    .line 96
    .restart local v3       #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    const/16 v2, 0x2003

    .line 98
    goto :goto_1

    .line 101
    :cond_3
    const-string v4, "BEGIN:VMSG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    iget-object v4, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v4, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 105
    .local v1, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 106
    :goto_3
    if-eqz v3, :cond_4

    const-string v4, "END:VMSG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 116
    :cond_4
    :goto_4
    if-ne v2, v5, :cond_0

    .line 120
    iget-object v4, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->import1Mms(Ljava/util/List;Landroid/content/Context;)I

    move-result v2

    .line 121
    iget v4, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->curNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->curNum:I

    .line 124
    .end local v1           #oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 107
    .restart local v1       #oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 108
    const/16 v2, 0x2003

    .line 109
    goto :goto_4

    .line 112
    :cond_7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_3

    .line 131
    .end local v1           #oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 133
    const/16 v2, 0x2002

    goto :goto_2
.end method


# virtual methods
.method public compose()I
    .locals 6

    .prologue
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "mms.vmsg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 54
    .local v1, reader1:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 55
    .local v2, reader2:Ljava/io/BufferedReader;
    if-nez v1, :cond_0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "mmsinbox_bak.vmsg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "mmssend_bak.vmsg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 64
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 65
    const/16 v3, 0x2005

    .line 88
    :cond_1
    :goto_1
    return v3

    .line 60
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "mmssend_bak.vmsg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    goto :goto_0

    .line 68
    :cond_3
    const/16 v3, 0x2002

    .line 69
    .local v3, result:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->curNum:I

    .line 70
    if-eqz v1, :cond_4

    .line 71
    invoke-direct {p0, v1}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->importMmsByVmsg(Ljava/io/BufferedReader;)I

    move-result v3

    .line 73
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :cond_4
    :goto_2
    const/16 v4, 0x2001

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 80
    invoke-direct {p0, v2}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;->importMmsByVmsg(Ljava/io/BufferedReader;)I

    move-result v3

    .line 82
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 75
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "Mms"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
