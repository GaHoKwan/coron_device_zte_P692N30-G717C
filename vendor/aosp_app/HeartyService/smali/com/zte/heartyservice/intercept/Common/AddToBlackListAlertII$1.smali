.class Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;
.super Ljava/lang/Object;
.source "AddToBlackListAlertII.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 130
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 131
    .local v3, positionINT:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget v6, v6, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->index:I

    if-lt v5, v6, :cond_0

    .line 133
    const-string v5, "AddToBlackListAlertII"

    const-string v6, "do nothing ================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v5, v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mMapForAction:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTagType:I

    .line 138
    const-string v5, "AddToBlackListAlertII"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log ===================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v5, "AddToBlackListAlertII"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log =======mTagType=========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget v7, v7, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTagType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget v5, v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTagType:I

    sget v6, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_NONE:I

    if-eq v5, v6, :cond_1

    .line 144
    const-string v5, "AddToBlackListAlertII"

    const-string v6, " mark thread .................................."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const v5, 0x7f0e0033

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 148
    .local v2, mImageView:Landroid/widget/ImageView;
    const v5, 0x7f020030

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    new-instance v4, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;-><init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;)V

    .line 153
    .local v4, task:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    .end local v2           #mImageView:Landroid/widget/ImageView;
    .end local v4           #task:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;
    :cond_1
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-boolean v5, v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->addBlackList:Z

    if-eqz v5, :cond_2

    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "phone_number"

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$100(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v5, "enable_sms"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    const-string v5, "enable_calling"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-virtual {v5}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$200()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 164
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_2
    const-string v5, "AddToBlackListAlertII"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xxxxxxxxxxxxxphoneNumxxxxxx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$100(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v5, v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v5}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->open()V

    .line 167
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v5, v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget v6, v6, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTagType:I

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$100(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->insertData(ILjava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_1
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_2
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-virtual {v5}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->finish()V

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
