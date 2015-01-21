.class public Lcom/zte/backup/composer/settings/SettingsRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "SettingsRestoreComposer.java"


# instance fields
.field private db:Lcom/zte/backup/format/db/SettingsBackup;

.field isU960S3:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->isU960S3:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    .line 33
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/zte/backup/format/db/SettingsBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/db/SettingsBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    .line 35
    sget-object v0, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 36
    iget-object v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->getItemCountFromBackupXml(Lcom/zte/backup/composer/DataType;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    invoke-virtual {v0}, Lcom/zte/backup/format/db/SettingsBackup;->getBackupOrRestoreCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->totalNum:I

    .line 39
    :cond_0
    return-void
.end method

.method public static isU960S3Settings(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-string v0, "settings/settings.db"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public compose()I
    .locals 9

    .prologue
    .line 56
    iget-boolean v7, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->isU960S3:Z

    if-eqz v7, :cond_1

    .line 57
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->path:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, file:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, newPath:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "settings.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, dbFile:Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->path:Ljava/lang/String;

    const-string v8, "settings/settings.db"

    invoke-static {v7, v8, v1}, Lcom/zte/backup/common/CommonFunctions;->unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    const/16 v6, 0x2002

    .line 77
    .end local v1           #dbFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #newPath:Ljava/lang/String;
    :goto_0
    return v6

    .line 64
    .restart local v1       #dbFile:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #newPath:Ljava/lang/String;
    :cond_0
    iput-object v4, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->path:Ljava/lang/String;

    .line 65
    iget-object v7, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    invoke-virtual {v7}, Lcom/zte/backup/format/db/SettingsBackup;->startSettingsRestore()I

    move-result v6

    .line 66
    .local v6, result:I
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 68
    .local v0, bDel:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bDel:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0           #bDel:Z
    .end local v1           #dbFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #newPath:Ljava/lang/String;
    .end local v6           #result:I
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, pathFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 74
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_2

    .line 75
    const/16 v6, 0x2005

    goto :goto_0

    .line 77
    :cond_2
    iget-object v7, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->db:Lcom/zte/backup/format/db/SettingsBackup;

    invoke-virtual {v7}, Lcom/zte/backup/format/db/SettingsBackup;->startSettingsRestore()I

    move-result v6

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "Setting"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public setInPath(Ljava/lang/String;)V
    .locals 3
    .parameter "backupPath"

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->path:Ljava/lang/String;

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->isU960S3:Z

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->getFolderDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;->path:Ljava/lang/String;

    goto :goto_0
.end method
