.class Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
.super Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    .line 794
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    .line 795
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 799
    aget-object v3, p1, v6

    check-cast v3, Ljava/util/List;

    .line 800
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 801
    const/4 v5, 0x0

    .line 803
    .local v5, progress:I
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 804
    .local v2, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 819
    if-lez v5, :cond_0

    .line 820
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 821
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 825
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v5           #progress:I
    :cond_0
    :goto_1
    return-object v10

    .line 807
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .restart local v5       #progress:I
    :cond_1
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    move-object v4, v0

    .line 808
    .local v4, localEncryImageVideoItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypt()V

    .line 809
    iget v6, v4, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->id:I

    iget-object v7, v4, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deletePrivacyData(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 819
    if-lez v5, :cond_0

    .line 820
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 821
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    goto :goto_1

    .line 815
    :cond_2
    const/4 v6, 0x2

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v4, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 819
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v4           #localEncryImageVideoItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :catchall_0
    move-exception v6

    if-lez v5, :cond_3

    .line 820
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 821
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    :cond_3
    throw v6

    .line 819
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    if-lez v5, :cond_0

    .line 820
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 821
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$302(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    .line 839
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->onPostExecute(Ljava/lang/Object;)V

    .line 840
    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 830
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const v2, 0x7f0a035e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->mMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 831
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;->onPreExecute()V

    .line 832
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 844
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 845
    .local v1, progress:Ljava/lang/Integer;
    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/String;

    .line 846
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 847
    const-string v0, ""

    .line 850
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 851
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const v5, 0x7f0a035e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    iget v7, p0, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 854
    return-void
.end method
