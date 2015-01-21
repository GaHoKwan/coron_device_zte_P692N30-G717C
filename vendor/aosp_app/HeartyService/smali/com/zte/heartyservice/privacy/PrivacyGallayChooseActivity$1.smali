.class Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;
.super Landroid/os/Handler;
.source "PrivacyGallayChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 76
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$000(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->doRefreshGallaryChoose()V
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$100(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    const v6, 0x7f0a0315

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$300(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 88
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 89
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 97
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "num"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, n:I
    const-string v4, "percent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, percent:Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    const v6, 0x7f0a0318

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #n:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #percent:Ljava/lang/String;
    :pswitch_5
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->cancel(Z)Z

    .line 114
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    invoke-static {v4, v7}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$402(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->initGallaryChooseWithoutBitmap()V
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$500(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    .line 117
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->askRefreshGallaryChoose()V
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$600(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    .line 118
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    new-instance v5, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {v5, v6, v7}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;)V

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$402(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    .line 119
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v4

    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
