.class public Lcom/zte/backup/composer/settings/SettingsBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "SettingsBackupComposer.java"


# instance fields
.field private db:Lcom/zte/backup/format/db/SettingsBackup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    .line 24
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 26
    new-instance v0, Lcom/zte/backup/format/db/SettingsBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/db/SettingsBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    .line 27
    iget-object v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    invoke-virtual {v0}, Lcom/zte/backup/format/db/SettingsBackup;->getBackupOrRestoreCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->totalNum:I

    .line 28
    iget-object v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    invoke-virtual {v0}, Lcom/zte/backup/format/db/SettingsBackup;->getBackupDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->size:J

    .line 29
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->totalNum:I

    if-nez v0, :cond_0

    .line 47
    const/16 v0, 0x2005

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/backup/composer/settings/SettingsBackupComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    invoke-virtual {v0}, Lcom/zte/backup/format/db/SettingsBackup;->startSettingsBackup()I

    move-result v0

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "Setting"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
