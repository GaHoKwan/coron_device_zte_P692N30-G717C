.class public abstract Lcom/zte/backup/composer/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# instance fields
.field protected attached:Ljava/lang/Object;

.field protected context:Landroid/content/Context;

.field protected curNum:I

.field protected isCancel:Z

.field protected name:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected reporter:Lcom/zte/backup/reporter/IProgressReporter;

.field protected size:J

.field protected totalNum:I

.field protected type:Lcom/zte/backup/composer/DataType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/backup/composer/Composer;->isCancel:Z

    .line 56
    iput-object p1, p0, Lcom/zte/backup/composer/Composer;->context:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/zte/backup/cloudbackup/utils/FileHelper;

    invoke-direct {v0}, Lcom/zte/backup/cloudbackup/utils/FileHelper;-><init>()V

    .line 176
    .local v0, fh:Lcom/zte/backup/cloudbackup/utils/FileHelper;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearData delte dir:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/backup/common/Logging;->d(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->delDir(Ljava/lang/String;)Z

    .line 178
    return-void
.end method

.method public abstract compose()I
.end method

.method public getAttached()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->attached:Ljava/lang/Object;

    return-object v0
.end method

.method public getBackupCountIDsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurNum()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/zte/backup/composer/Composer;->curNum:I

    return v0
.end method

.method public abstract getFolderDir()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/zte/backup/composer/Composer;->size:J

    return-wide v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/zte/backup/composer/Composer;->totalNum:I

    return v0
.end method

.method public getType()Lcom/zte/backup/composer/DataType;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->type:Lcom/zte/backup/composer/DataType;

    return-object v0
.end method

.method public increaseComposed()V
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/zte/backup/composer/Composer;->curNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/backup/composer/Composer;->curNum:I

    .line 153
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v0, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 156
    :cond_0
    return-void
.end method

.method public abstract init()Z
.end method

.method public declared-synchronized isCancel()Z
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/backup/composer/Composer;->isCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/backup/composer/Composer;->isCancel:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-virtual {p0}, Lcom/zte/backup/composer/Composer;->getType()Lcom/zte/backup/composer/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/zte/backup/reporter/IProgressReporter;->updateEndStatus(II)V

    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v0, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateStartStauts(Lcom/zte/backup/composer/Composer;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setAttached(Ljava/lang/Object;)V
    .locals 0
    .parameter "attached"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/backup/composer/Composer;->attached:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public declared-synchronized setCancel(Z)V
    .locals 1
    .parameter "cancel"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/zte/backup/composer/Composer;->isCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInPath(Ljava/lang/String;)V
    .locals 2
    .parameter "backupPath"

    .prologue
    .line 126
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/backup/composer/Composer;->getFolderDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/Composer;->getFolderDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutPath(Ljava/lang/String;)V
    .locals 2
    .parameter "backupPath"

    .prologue
    .line 112
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/backup/composer/Composer;->getFolderDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->mkSdDir(Ljava/lang/String;)Z

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/Composer;->getFolderDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/composer/Composer;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public setReporter(Lcom/zte/backup/reporter/IProgressReporter;)V
    .locals 0
    .parameter "reporter"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zte/backup/composer/Composer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    .line 104
    return-void
.end method
