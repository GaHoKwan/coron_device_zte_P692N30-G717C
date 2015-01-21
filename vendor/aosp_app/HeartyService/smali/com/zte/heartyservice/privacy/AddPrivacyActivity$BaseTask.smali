.class abstract Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;
.super Landroid/os/AsyncTask;
.source "AddPrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;
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

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;I)V
    .locals 1
    .parameter
    .parameter "max"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 587
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    .line 590
    iput p2, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    .line 591
    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 631
    :try_start_0
    iget v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 636
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 638
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;

    if-eqz v0, :cond_0

    .line 639
    check-cast p1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;

    .end local p1
    iget-boolean v0, p1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->success:Z

    if-eqz v0, :cond_0

    .line 640
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const v1, 0x7f0a0642

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 649
    :cond_0
    :goto_1
    return-void

    .line 634
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    .end local p1
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 601
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 602
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 13
    .parameter "values"

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 606
    aget-object v2, p1, v11

    check-cast v2, Ljava/lang/Integer;

    .line 607
    .local v2, n:Ljava/lang/Integer;
    aget-object v4, p1, v10

    check-cast v4, Ljava/lang/String;

    .line 608
    .local v4, percent:Ljava/lang/String;
    aget-object v3, p1, v12

    check-cast v3, Ljava/lang/String;

    .line 609
    .local v3, name:Ljava/lang/String;
    aget-object v1, p1, v9

    check-cast v1, Ljava/lang/Integer;

    .line 611
    .local v1, msgRes:Ljava/lang/Integer;
    iget v6, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->mMax:I

    if-ne v6, v10, :cond_1

    .line 613
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    const-string v7, "%"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v11

    aput-object v4, v9, v10

    aput-object v3, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 626
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 619
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 620
    .local v5, progress:I
    if-lez v5, :cond_0

    .line 621
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method
