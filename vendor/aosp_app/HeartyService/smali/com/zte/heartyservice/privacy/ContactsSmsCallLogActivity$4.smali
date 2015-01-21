.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;
.super Landroid/os/Handler;
.source "ContactsSmsCallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 298
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 300
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 301
    .local v0, data:Landroid/os/Bundle;
    const-string v6, "max"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, max:I
    const-string v6, "strID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 303
    .local v4, strID:I
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v7, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 305
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 306
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 311
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #max:I
    .end local v4           #strID:I
    :pswitch_1
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 315
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v6, "name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, name:Ljava/lang/String;
    const-string v6, "num"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 318
    .local v3, num:I
    const-string v6, "total"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 319
    .local v5, total:I
    const-string v6, "strID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 320
    .restart local v4       #strID:I
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v4, v8}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #num:I
    .end local v4           #strID:I
    .end local v5           #total:I
    :pswitch_3
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 333
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v6, "max"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    .restart local v1       #max:I
    const-string v6, "strID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 336
    .restart local v4       #strID:I
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v7, v4, v8}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 338
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 339
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 344
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #max:I
    .end local v4           #strID:I
    :pswitch_5
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 348
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v6, "num"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 350
    .restart local v3       #num:I
    const-string v6, "strID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 351
    .restart local v4       #strID:I
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v7, v4, v8}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 357
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #num:I
    .end local v4           #strID:I
    :pswitch_7
    :try_start_1
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 358
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
