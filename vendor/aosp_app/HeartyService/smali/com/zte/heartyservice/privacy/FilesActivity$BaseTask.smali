.class abstract Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;
.super Landroid/os/AsyncTask;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected mMax:I

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V
    .locals 1
    .parameter
    .parameter "max"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 495
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->mMax:I

    .line 498
    iput p2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->mMax:I

    .line 499
    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->loadData(Z)V

    .line 537
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->mMax:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 527
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->loadData(Z)V

    .line 532
    return-void

    .line 528
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->mMax:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 504
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 505
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 506
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 12
    .parameter "values"

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 510
    aget-object v1, p1, v9

    check-cast v1, Ljava/lang/Integer;

    .line 511
    .local v1, n:Ljava/lang/Integer;
    aget-object v3, p1, v10

    check-cast v3, Ljava/lang/String;

    .line 512
    .local v3, percent:Ljava/lang/String;
    aget-object v2, p1, v11

    check-cast v2, Ljava/lang/String;

    .line 513
    .local v2, name:Ljava/lang/String;
    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Integer;

    .line 515
    .local v0, msgRes:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 516
    .local v4, progress:I
    if-lez v4, :cond_0

    .line 517
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 519
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    aput-object v3, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method
