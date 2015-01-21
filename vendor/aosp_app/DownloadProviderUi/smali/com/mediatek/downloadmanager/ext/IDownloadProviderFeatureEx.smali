.class public interface abstract Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;
.super Ljava/lang/Object;
.source "IDownloadProviderFeatureEx.java"


# virtual methods
.method public abstract addAppReadableColumnsSet(Ljava/util/HashSet;Ljava/lang/String;)V
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
.end method

.method public abstract addCustomerDBColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract copyContentValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
.end method

.method public abstract getNotificationText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getShowDialogReasonInt(Landroid/content/Intent;)I
.end method

.method public abstract getStorageDirectory(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setHttpSocketTimeOut(Lorg/apache/http/params/HttpParams;I)V
.end method

.method public abstract shouldFinishThisActivity()Z
.end method

.method public abstract shouldNotifyFileAlreadyExist()Z
.end method

.method public abstract shouldProcessWhenFileExist()Z
.end method

.method public abstract shouldSetContinueDownload()Z
.end method

.method public abstract shouldSetDownloadPath()Z
.end method

.method public abstract shouldSetDownloadPathSelectFileMager()Z
.end method

.method public abstract showFileAlreadyExistDialog(Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method
