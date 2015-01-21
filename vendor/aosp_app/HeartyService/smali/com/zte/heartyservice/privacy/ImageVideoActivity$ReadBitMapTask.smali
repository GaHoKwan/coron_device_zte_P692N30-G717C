.class Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;
.super Landroid/os/AsyncTask;
.source "ImageVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ImageVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadBitMapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v9, 0x0

    .line 396
    const/4 v6, 0x0

    aget-object v4, p1, v6

    .line 397
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 398
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 399
    .local v3, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_1
    :goto_1
    return-object v9

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_2
    move-object v5, v3

    .line 403
    check-cast v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;

    .line 404
    .local v5, localEncryImageVideoItem:Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->decrypt()V

    .line 406
    iget-object v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 407
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v6, 0x3

    if-ge v1, v6, :cond_0

    .line 409
    :try_start_0
    iget v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->tp:I
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v6, :pswitch_data_0

    .line 444
    :goto_3
    :pswitch_0
    iget-object v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 445
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->refreshUI(J)V

    goto :goto_0

    .line 411
    :pswitch_1
    :try_start_1
    iget-object v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->nn:Ljava/lang/String;

    iget-object v7, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->keyData:[B

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getBitMapWhenWithoutBitmap(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/nio/channels/ClosedByInterruptException;
    const-string v6, "chenlu"

    invoke-virtual {v0}, Ljava/nio/channels/ClosedByInterruptException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    .end local v0           #e:Ljava/nio/channels/ClosedByInterruptException;
    :pswitch_2
    :try_start_2
    iget-object v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->nn:Ljava/lang/String;

    iget v7, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->hs:I

    iget-object v8, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->keyData:[B

    invoke-static {v6, v7, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getBitMapWhenHeadWithBitmap(Ljava/lang/String;I[B)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 440
    :catch_1
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "chenlu"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 391
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->access$600(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->access$602(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;)Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    .line 461
    :cond_0
    return-void
.end method
