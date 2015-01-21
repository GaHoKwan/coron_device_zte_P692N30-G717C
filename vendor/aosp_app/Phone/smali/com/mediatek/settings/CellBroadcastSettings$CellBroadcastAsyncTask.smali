.class Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
.super Landroid/os/AsyncTask;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellBroadcastAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1049
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1083
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "task is working"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2900(Lcom/mediatek/settings/CellBroadcastSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1086
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V

    .line 1090
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1101
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "cancel task"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateUI()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1103
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1104
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1049
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1095
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "task finished"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateUI()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1097
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1054
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    :cond_0
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "onPreExecute, activity is finished, do nothing"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateStatus(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2600(Lcom/mediatek/settings/CellBroadcastSettings;Z)V

    .line 1060
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2700(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1061
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2802(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1062
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1063
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1064
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;-><init>(Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1078
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
