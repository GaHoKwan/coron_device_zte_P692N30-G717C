.class public Lcom/zte/backup/composer/alarm/AlarmBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "AlarmBackupComposer.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private db:Lcom/zte/backup/format/db/DBBackup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "AlarmBackupComposer"

    sput-object v0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->LOG_TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    .line 36
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 38
    new-instance v0, Lcom/zte/backup/format/db/AlarmDBBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/db/AlarmDBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    .line 39
    iget-object v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    invoke-virtual {v0}, Lcom/zte/backup/format/db/DBBackup;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->totalNum:I

    .line 40
    iget-object v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    invoke-virtual {v0}, Lcom/zte/backup/format/db/DBBackup;->getBackupDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->size:J

    .line 41
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 3

    .prologue
    .line 60
    iget v2, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->totalNum:I

    if-nez v2, :cond_1

    .line 61
    const/16 v1, 0x2005

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    invoke-virtual {v2}, Lcom/zte/backup/format/db/DBBackup;->startBackup()I

    move-result v1

    .line 64
    .local v1, iResult:I
    const/16 v2, 0x2001

    if-eq v1, v2, :cond_0

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "Alarm"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->size:J

    return-wide v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;->totalNum:I

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
