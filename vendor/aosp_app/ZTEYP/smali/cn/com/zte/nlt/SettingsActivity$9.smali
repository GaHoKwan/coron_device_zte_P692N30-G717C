.class Lcn/com/zte/nlt/SettingsActivity$9;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/SettingsActivity;->startAsyncTaskForDownloadDb(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/SettingsActivity;

.field final synthetic val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    iput-object p2, p0, Lcn/com/zte/nlt/SettingsActivity$9;->val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    .line 370
    iget-object v2, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const/4 v3, 0x1

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->isUpdating:Z
    invoke-static {v2, v3}, Lcn/com/zte/nlt/SettingsActivity;->access$1302(Lcn/com/zte/nlt/SettingsActivity;Z)Z

    .line 371
    const/4 v1, 0x0

    .line 373
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcn/com/zte/nlt/SettingsActivity$9;->val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    if-nez v2, :cond_0

    .line 374
    const/4 v2, 0x0

    invoke-static {v2}, Lcn/com/zte/nlt/update/Updater;->update(Lcn/com/zte/nlt/down/IDownloadCallback;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 376
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcn/com/zte/nlt/SettingsActivity$9;->val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/zte/nlt/update/Updater;->update(Lcn/com/zte/nlt/down/UpdatePackageInfo;Lcn/com/zte/nlt/down/IDownloadCallback;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    .line 380
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 367
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/SettingsActivity$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const/4 v1, 0x0

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->isUpdating:Z
    invoke-static {v0, v1}, Lcn/com/zte/nlt/SettingsActivity;->access$1302(Lcn/com/zte/nlt/SettingsActivity;Z)Z

    .line 388
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-virtual {v0}, Lcn/com/zte/nlt/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$1400(Lcn/com/zte/nlt/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$1400(Lcn/com/zte/nlt/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const v1, 0x7f08006e

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$400(Lcn/com/zte/nlt/SettingsActivity;II)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$9;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const v1, 0x7f08006f

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$400(Lcn/com/zte/nlt/SettingsActivity;II)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 367
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/SettingsActivity$9;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
