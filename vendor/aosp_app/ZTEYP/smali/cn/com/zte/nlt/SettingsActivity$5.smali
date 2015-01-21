.class Lcn/com/zte/nlt/SettingsActivity$5;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/SettingsActivity;->startAsyncTaskForGetUpdateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

.field final synthetic this$0:Lcn/com/zte/nlt/SettingsActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/SettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 222
    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const/4 v2, 0x1

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->isChecking:Z
    invoke-static {v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$702(Lcn/com/zte/nlt/SettingsActivity;Z)Z

    .line 224
    :try_start_0
    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getUpdatePackageInfo()Lcn/com/zte/nlt/down/UpdatePackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/com/zte/nlt/SettingsActivity$5;->pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    .line 225
    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity$5;->pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    invoke-static {v1}, Lcn/com/zte/nlt/update/Updater;->getUpdateInfo(Lcn/com/zte/nlt/down/UpdatePackageInfo;)Lcn/com/zte/nlt/update/Updater$UpdateInfo;

    move-result-object v1

    iget v1, v1, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    .line 228
    sget v1, Lcn/com/zte/nlt/update/Updater;->EXCEPTION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/SettingsActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->isChecking:Z
    invoke-static {v0, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$702(Lcn/com/zte/nlt/SettingsActivity;Z)Z

    .line 235
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-virtual {v0}, Lcn/com/zte/nlt/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$800(Lcn/com/zte/nlt/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$800(Lcn/com/zte/nlt/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcn/com/zte/nlt/update/Updater;->HAS_UPDATE:I

    if-ne v0, v1, :cond_3

    .line 239
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->autoUpdate:Z
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$900(Lcn/com/zte/nlt/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity$5;->pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showNewVersionDialog(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    invoke-static {v0, v1}, Lcn/com/zte/nlt/SettingsActivity;->access$1000(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity$5;->pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->startAsyncTaskForDownloadDb(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    invoke-static {v0, v1}, Lcn/com/zte/nlt/SettingsActivity;->access$1100(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcn/com/zte/nlt/update/Updater;->NO_UPDATE:I

    if-ne v0, v1, :cond_4

    .line 245
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showLatestVersionDialog()V
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$1200(Lcn/com/zte/nlt/SettingsActivity;)V

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcn/com/zte/nlt/update/Updater;->EXCEPTION:I

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$5;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const v1, 0x7f080063

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$400(Lcn/com/zte/nlt/SettingsActivity;II)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/SettingsActivity$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
