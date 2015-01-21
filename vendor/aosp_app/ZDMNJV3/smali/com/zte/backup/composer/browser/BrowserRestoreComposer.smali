.class public Lcom/zte/backup/composer/browser/BrowserRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "BrowserRestoreComposer.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private db:Lcom/zte/backup/format/db/DBBackup;

.field isU960S3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "BrowserRestoreComposer"

    sput-object v0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->LOG_TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->isU960S3:Z

    .line 42
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 44
    iget-object v0, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->getItemCountFromBackupXml(Lcom/zte/backup/composer/DataType;)I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->totalNum:I

    .line 45
    new-instance v0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    .line 46
    return-void
.end method

.method public static isU960S3Browser(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-string v0, "browser/bookmark.db"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public compose()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 55
    sget-object v5, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->LOG_TAG:Ljava/lang/String;

    const-string v6, "BrowserRestoreComposer begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v5, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->isU960S3:Z

    if-eqz v5, :cond_1

    .line 57
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->path:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, newPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    invoke-virtual {v6}, Lcom/zte/backup/format/db/DBBackup;->getDBName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, dbFile:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->path:Ljava/lang/String;

    const-string v6, "browser/bookmark.db"

    invoke-static {v5, v6, v1}, Lcom/zte/backup/common/CommonFunctions;->unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    const/16 v4, 0x2002

    .line 71
    .end local v1           #dbFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #newPath:Ljava/lang/String;
    :goto_0
    return v4

    .line 64
    .restart local v1       #dbFile:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #newPath:Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->path:Ljava/lang/String;

    .line 65
    iget-object v5, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    invoke-virtual {v5, v7}, Lcom/zte/backup/format/db/DBBackup;->startRestore(Z)I

    move-result v4

    .line 66
    .local v4, result:I
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 68
    .local v0, bDel:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bDel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0           #bDel:Z
    .end local v1           #dbFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #newPath:Ljava/lang/String;
    .end local v4           #result:I
    :cond_1
    iget-object v5, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    invoke-virtual {v5, v7}, Lcom/zte/backup/format/db/DBBackup;->startRestore(Z)I

    move-result v4

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "Browser"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public setInPath(Ljava/lang/String;)V
    .locals 3
    .parameter "backupPath"

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
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

    .line 88
    iput-object p1, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->path:Ljava/lang/String;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->isU960S3:Z

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->getFolderDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;->path:Ljava/lang/String;

    goto :goto_0
.end method
