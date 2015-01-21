.class public Lcom/zte/heartyservice/speedup/SysGarbageFile;
.super Ljava/lang/Object;
.source "SysGarbageFile.java"


# instance fields
.field appLogFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field appLogFileSize:J

.field blankFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field tmpSysFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field tmpSysFileSize:J


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 11
    iput-wide v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    .line 13
    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->blankFileList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->blankFileList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method addAppLogFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    .line 34
    return-void
.end method

.method addBlankFile(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->blankFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method addTmpSysFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 28
    return-void
.end method

.method showAll()V
    .locals 5

    .prologue
    .line 43
    const-string v1, "TMP"

    const-string v2, "======================================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    const-string v2, "TMP"

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "TMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v1, "LOG"

    const-string v2, "======================================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    const-string v2, "LOG"

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    const-string v1, "LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v1, "BLANK"

    const-string v2, "======================================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->blankFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 60
    const-string v2, "BLANK"

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->blankFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    :cond_2
    return-void
.end method
