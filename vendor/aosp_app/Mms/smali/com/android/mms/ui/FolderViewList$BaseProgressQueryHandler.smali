.class public abstract Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FolderViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseProgressQueryHandler"
.end annotation


# instance fields
.field private dialog:Lcom/android/mms/ui/NewProgressDialog;

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1026
    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1075
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/NewProgressDialog;->setDismiss(Z)V

    .line 1077
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 1084
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1082
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    throw v1
.end method

.method protected isHasProgressDialog()Z
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected progress()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1062
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v1, :cond_0

    .line 1063
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";   dialog.getMax() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget v1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->progress:I

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1066
    :cond_0
    return v0
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1044
    :cond_0
    return-void
.end method

.method public setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V
    .locals 0
    .parameter "cdialog"

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 1034
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    const-string v0, "FolderViewList"

    const-string v1, "dialog = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
