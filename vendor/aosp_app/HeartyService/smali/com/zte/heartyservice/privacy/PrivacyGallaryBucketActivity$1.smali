.class Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;
.super Landroid/os/Handler;
.source "PrivacyGallaryBucketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 296
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanSdCard()V

    goto :goto_0

    .line 300
    :pswitch_1
    const-string v0, "image"

    const-string v1, "STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    const v1, 0x7f0a0311

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 305
    :pswitch_2
    const-string v0, "image"

    const-string v1, "FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->cancel(Z)Z

    .line 308
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$202(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketWithoutBitmap()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$500(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 311
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->doRefreshGallaryBucket()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$600(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 312
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$202(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 313
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    const v1, 0x7f0a0312

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 318
    :pswitch_3
    const-string v0, "image"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->cancel(Z)Z

    .line 321
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$202(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketWithoutBitmap()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$500(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 324
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->doRefreshGallaryBucket()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$600(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 325
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$202(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 326
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 330
    :pswitch_4
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->doRefreshGallaryBucket()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$600(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    goto/16 :goto_0

    .line 334
    :pswitch_5
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallaryBucketAdapter:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$700(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
