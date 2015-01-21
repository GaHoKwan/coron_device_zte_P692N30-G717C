.class public Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "ZTEBrowserRestoreComposer.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private db:Lcom/zte/backup/format/db/DBBackup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ZTEBrowserRestoreComposer"

    sput-object v0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->LOG_TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/zte/backup/composer/DataType;->ZTEBROWSER:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 35
    iget-object v0, p0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->getItemCountFromBackupXml(Lcom/zte/backup/composer/DataType;)I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->totalNum:I

    .line 36
    new-instance v0, Lcom/zte/backup/format/db/ZTEBrowserBookmarkDBBackup;

    invoke-direct {v0, p0}, Lcom/zte/backup/format/db/ZTEBrowserBookmarkDBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v0, p0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    .line 37
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ZTEBrowserRestoreComposer begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->db:Lcom/zte/backup/format/db/DBBackup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/backup/format/db/DBBackup;->startRestore(Z)I

    move-result v0

    return v0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "ZTEBrowser"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public setInPath(Ljava/lang/String;)V
    .locals 2
    .parameter "backupPath"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->getFolderDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;->path:Ljava/lang/String;

    .line 63
    return-void
.end method
