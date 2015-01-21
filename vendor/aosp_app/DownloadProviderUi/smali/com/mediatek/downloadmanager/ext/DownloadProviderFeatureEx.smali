.class public Lcom/mediatek/downloadmanager/ext/DownloadProviderFeatureEx;
.super Landroid/content/ContextWrapper;
.source "DownloadProviderFeatureEx.java"

# interfaces
.implements Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProviderPluginEx"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addAppReadableColumnsSet(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, sAppReadableColumnsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: addAppReadableColumnsSet --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public addCustomerDBColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "dbTable"
    .parameter "columnName"
    .parameter "columnDefinition"

    .prologue
    .line 51
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: addCustomerDBColumn --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public copyContentValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 58
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: copyContentValues --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public getNotificationText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "mimeType"
    .parameter "fullFileName"

    .prologue
    .line 37
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: getNotificationText --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowDialogReasonInt(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 78
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: getShowDialogReasonInt --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, -0x1

    return v0
.end method

.method public getStorageDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 84
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: getStorageDirectory --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHttpSocketTimeOut(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .parameter "params"
    .parameter "timeout"

    .prologue
    .line 68
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: setHttpSocketTimeOut --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const v0, 0xea60

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    return-void
.end method

.method public shouldFinishThisActivity()Z
    .locals 2

    .prologue
    .line 95
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: shouldFinishThisActivity --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotifyFileAlreadyExist()Z
    .locals 2

    .prologue
    .line 73
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: shouldNotifyFileAlreadyExist --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessWhenFileExist()Z
    .locals 2

    .prologue
    .line 100
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: shouldProcessWhenFileExist --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSetContinueDownload()Z
    .locals 2

    .prologue
    .line 26
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: shouldSetContinueDownload --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSetDownloadPath()Z
    .locals 2

    .prologue
    .line 31
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: shouldSetDownloadPath --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSetDownloadPathSelectFileMager()Z
    .locals 2

    .prologue
    .line 90
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: SetDownloadPathSelectFileMager --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public showFileAlreadyExistDialog(Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "builder"
    .parameter "appLable"
    .parameter "message"
    .parameter "positiveButtonString"
    .parameter "negativeButtonString"
    .parameter "listener"

    .prologue
    .line 106
    const-string v0, "DownloadProviderPluginEx"

    const-string v1, "Enter: showFileAlreadyExistDialog --default implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
