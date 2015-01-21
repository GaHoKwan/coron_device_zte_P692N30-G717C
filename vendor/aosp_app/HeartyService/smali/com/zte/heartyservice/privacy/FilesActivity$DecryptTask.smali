.class Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
.super Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation


# instance fields
.field private mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V
    .locals 1
    .parameter
    .parameter "max"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    .line 689
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    .line 692
    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask$1;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    .line 690
    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "params"

    .prologue
    .line 704
    const/16 v18, 0x0

    .line 705
    .local v18, result:Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v15, p1, v2

    check-cast v15, Ljava/util/List;

    .line 706
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 707
    .local v13, isShowTemp:Z
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 708
    const/4 v1, 0x1

    .line 710
    .local v1, n:I
    const/16 v16, 0x0

    .line 711
    .local v16, localEncryItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :try_start_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 712
    .local v14, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    const/16 v18, 0x0

    .line 739
    .end local v18           #result:Ljava/lang/Object;
    if-nez v13, :cond_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 740
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 741
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 745
    .end local v1           #n:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v16           #localEncryItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :cond_0
    :goto_1
    return-object v18

    .line 715
    .restart local v1       #n:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .restart local v16       #localEncryItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    .restart local v18       #result:Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object v0, v14

    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    move-object/from16 v16, v0

    .line 716
    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypt()V

    .line 717
    if-eqz v13, :cond_2

    .line 718
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowTemp(Z)V

    .line 720
    :cond_2
    move-object/from16 v0, v16

    iget v2, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->id:I

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->op:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->ot:J

    move-object/from16 v0, v16

    iget v8, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->tp:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->hs:I

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->keyData:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    invoke-static/range {v1 .. v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decrypt(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 726
    const/16 v18, 0x0

    .line 739
    .end local v18           #result:Ljava/lang/Object;
    if-nez v13, :cond_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 740
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 741
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    goto :goto_1

    .line 728
    .restart local v18       #result:Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v14           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_4
    if-eqz v13, :cond_5

    .line 731
    :try_start_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    .line 733
    .local v17, pdTempExchangeFolder:Ljava/lang/String;
    if-eqz v17, :cond_5

    if-eqz v16, :cond_5

    .line 735
    move-object/from16 v18, v16

    .line 739
    .end local v17           #pdTempExchangeFolder:Ljava/lang/String;
    .end local v18           #result:Ljava/lang/Object;
    :cond_5
    if-nez v13, :cond_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 740
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 741
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    goto :goto_1

    .line 739
    .end local v12           #i$:Ljava/util/Iterator;
    .restart local v18       #result:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    if-nez v13, :cond_6

    const/4 v3, 0x1

    if-le v1, v3, :cond_6

    .line 740
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 741
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    :cond_6
    throw v2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 756
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$200(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 757
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const/4 v3, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    invoke-static {v2, v3}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$202(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    .line 759
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->onPostExecute(Ljava/lang/Object;)V

    .line 761
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    if-eqz v2, :cond_1

    .line 762
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, pdTempExchangeFolder:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 764
    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    .line 765
    .local v0, localEncryItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    iget v2, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->tp:I

    packed-switch v2, :pswitch_data_0

    .line 788
    .end local v0           #localEncryItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    .end local v1           #pdTempExchangeFolder:Ljava/lang/String;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 768
    .restart local v0       #localEncryItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    .restart local v1       #pdTempExchangeFolder:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$400(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->showImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :pswitch_2
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$400(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->showVideo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :pswitch_3
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$400(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->viewFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const v2, 0x7f0a0316

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 751
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->onPreExecute()V

    .line 752
    return-void
.end method
