.class public Lcom/zte/backup/composer/sms/SmsRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "SmsRestoreComposer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 35
    const-string v0, "Sms"

    iput-object v0, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->name:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getSmsCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->totalNum:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->curNum:I

    .line 38
    return-void
.end method

.method private closeReader(Ljava/io/BufferedReader;)V
    .locals 2
    .parameter "reader"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private importSmsByVmsg(Ljava/io/BufferedReader;)I
    .locals 6
    .parameter "reader"

    .prologue
    const/16 v5, 0x2001

    .line 97
    const/16 v2, 0x2001

    .line 99
    .local v2, result:I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, str:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eq v2, v5, :cond_1

    .line 142
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 101
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const/16 v2, 0x2003

    .line 103
    goto :goto_1

    .line 106
    :cond_2
    const-string v4, "BEGIN:VMSG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    iget-object v4, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v4, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v1, oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 111
    :goto_2
    if-eqz v3, :cond_3

    const-string v4, "END:VMSG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    :cond_3
    :goto_3
    if-ne v2, v5, :cond_0

    .line 125
    iget-object v4, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/zte/backup/format/vxx/vmsg/VMsg;->import1Sms(Ljava/util/List;Landroid/content/Context;)I

    move-result v2

    .line 126
    iget v4, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->curNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->curNum:I

    .line 129
    .end local v1           #oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 112
    .restart local v1       #oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 113
    const/16 v2, 0x2003

    .line 114
    goto :goto_3

    .line 117
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 137
    .end local v1           #oneVmsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 139
    const/16 v2, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public compose()I
    .locals 6

    .prologue
    const/16 v5, 0x2001

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "sms.vmsg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 48
    .local v0, reader1:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 49
    .local v1, reader2:Ljava/io/BufferedReader;
    if-nez v0, :cond_0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "smsinbox_bak.vmsg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "smssend_bak.vmsg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 59
    const/16 v2, 0x2005

    .line 80
    :cond_1
    :goto_1
    return v2

    .line 54
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "smssend_bak.vmsg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_3
    const/16 v2, 0x2002

    .line 63
    .local v2, result:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->curNum:I

    .line 64
    if-eqz v0, :cond_4

    .line 65
    invoke-direct {p0, v0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->importSmsByVmsg(Ljava/io/BufferedReader;)I

    move-result v2

    .line 66
    invoke-direct {p0, v0}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->closeReader(Ljava/io/BufferedReader;)V

    .line 69
    :cond_4
    if-eqz v1, :cond_6

    .line 70
    if-ne v2, v5, :cond_5

    .line 71
    invoke-direct {p0, v1}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->importSmsByVmsg(Ljava/io/BufferedReader;)I

    move-result v2

    .line 73
    :cond_5
    invoke-direct {p0, v1}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->closeReader(Ljava/io/BufferedReader;)V

    .line 76
    :cond_6
    if-ne v2, v5, :cond_1

    .line 77
    iget-object v3, p0, Lcom/zte/backup/composer/sms/SmsRestoreComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v3, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    goto :goto_1
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "Sms"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
