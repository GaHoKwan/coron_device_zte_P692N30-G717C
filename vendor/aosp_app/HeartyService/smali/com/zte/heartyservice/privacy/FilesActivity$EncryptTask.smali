.class public Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;
.super Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EncryptTask"
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
    .line 600
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    .line 601
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    .line 604
    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask$1;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    .line 602
    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x1

    .line 616
    new-instance v5, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;

    invoke-direct {v5}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;-><init>()V

    .line 617
    .local v5, result:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;
    const/4 v7, 0x0

    aget-object v3, p1, v7

    check-cast v3, Ljava/util/List;

    .line 618
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    aget-object v0, p1, v11

    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    .line 619
    .local v0, fileType:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 620
    const/4 v4, 0x1

    .line 622
    .local v4, n:I
    const/4 v6, 0x0

    .line 623
    .local v6, ret:Z
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 624
    .local v2, item:Ljava/io/File;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 660
    if-le v4, v11, :cond_0

    .line 661
    iput-boolean v11, v5, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->refresh:Z

    .line 662
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 663
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 669
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/io/File;
    .end local v4           #n:I
    .end local v6           #ret:Z
    :cond_0
    :goto_1
    return-object v5

    .line 627
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Ljava/io/File;
    .restart local v4       #n:I
    .restart local v6       #ret:Z
    :cond_1
    :try_start_1
    sget-object v7, Lcom/zte/heartyservice/privacy/FilesActivity$8;->$SwitchMap$com$zte$heartyservice$privacy$FilesActivity$FileType:[I

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v7, :pswitch_data_0

    .line 653
    :goto_2
    if-nez v6, :cond_3

    .line 660
    if-le v4, v11, :cond_0

    .line 661
    iput-boolean v11, v5, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->refresh:Z

    .line 662
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 663
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    goto :goto_1

    .line 629
    :pswitch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    const/4 v10, 0x0

    invoke-static {v4, v7, v8, v9, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v6

    .line 633
    goto :goto_2

    .line 635
    :pswitch_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    const/4 v10, 0x0

    invoke-static {v4, v7, v8, v9, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v6

    .line 639
    goto :goto_2

    .line 641
    :pswitch_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 642
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    const/4 v10, 0x0

    invoke-static {v4, v7, v8, v9, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v6

    goto :goto_2

    .line 647
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    const/4 v10, 0x0

    invoke-static {v4, v7, v8, v9, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    goto :goto_2

    .line 657
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 660
    .end local v2           #item:Ljava/io/File;
    :cond_4
    if-le v4, v11, :cond_5

    .line 661
    iput-boolean v11, v5, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->refresh:Z

    .line 662
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 663
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 666
    :cond_5
    iput-boolean v11, v5, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->success:Z

    goto :goto_1

    .line 660
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    if-le v4, v11, :cond_6

    .line 661
    iput-boolean v11, v5, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->refresh:Z

    .line 662
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 663
    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    :cond_6
    throw v7

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    if-ne v0, p0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    .line 683
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->onPostExecute(Ljava/lang/Object;)V

    .line 684
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const v2, 0x7f0a0315

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 675
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->onPreExecute()V

    .line 676
    return-void
.end method
