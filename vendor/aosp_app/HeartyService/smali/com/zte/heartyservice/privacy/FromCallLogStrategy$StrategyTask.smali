.class Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;
.super Landroid/os/AsyncTask;
.source "FromCallLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FromCallLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrategyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private checked_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

.field private type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, checked_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 116
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->checked_list:Ljava/util/List;

    .line 120
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 121
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->checked_list:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .parameter "params"

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const v20, 0x7f0a033c

    invoke-virtual/range {v18 .. v20}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showPD(II)V

    .line 131
    :cond_0
    :goto_0
    const/4 v12, 0x1

    .line 132
    .local v12, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    .line 133
    .local v9, list_size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .local v8, item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    move-object v10, v8

    .line 134
    check-cast v10, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    .line 135
    .local v10, localListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    invoke-virtual {v10}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, name:Ljava/lang/String;
    if-nez v14, :cond_1

    .line 137
    invoke-virtual {v10}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v14

    .line 139
    :cond_1
    invoke-virtual {v10}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getAc()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, ac:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallInThread(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 143
    .local v5, call_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v15, 0x1

    .line 144
    .local v15, num:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    .line 145
    .local v17, total:I
    if-lez v17, :cond_6

    .line 146
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v4, callItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v11, v4

    .line 147
    check-cast v11, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    .line 148
    .local v11, localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 149
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    invoke-virtual {v11}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->get_ID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverCallById(I)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    add-int/lit8 v16, v15, 0x1

    .end local v15           #num:I
    .local v16, num:I
    const v19, 0x7f0a0346

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move/from16 v15, v16

    .line 157
    .end local v16           #num:I
    .restart local v15       #num:I
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->isCancelled()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 158
    const/16 v18, 0x0

    .line 168
    .end local v3           #ac:Ljava/lang/String;
    .end local v4           #callItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v5           #call_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v10           #localListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v11           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #num:I
    .end local v17           #total:I
    :goto_3
    return-object v18

    .line 128
    .end local v9           #list_size:I
    .end local v12           #n:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const v20, 0x7f0a033e

    invoke-virtual/range {v18 .. v20}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showPD(II)V

    goto/16 :goto_0

    .line 152
    .restart local v3       #ac:Ljava/lang/String;
    .restart local v4       #callItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .restart local v5       #call_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .restart local v9       #list_size:I
    .restart local v10       #localListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .restart local v11       #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .restart local v12       #n:I
    .restart local v14       #name:Ljava/lang/String;
    .restart local v15       #num:I
    .restart local v17       #total:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 153
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    invoke-virtual {v11}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->get_ID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteCallById(I)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    add-int/lit8 v16, v15, 0x1

    .end local v15           #num:I
    .restart local v16       #num:I
    const v19, 0x7f0a0347

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move/from16 v15, v16

    .end local v16           #num:I
    .restart local v15       #num:I
    goto :goto_2

    .line 162
    .end local v4           #callItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    add-int/lit8 v13, v12, 0x1

    .end local v12           #n:I
    .local v13, n:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePD(I)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->isCancelled()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 164
    const/16 v18, 0x0

    move v12, v13

    .end local v13           #n:I
    .restart local v12       #n:I
    goto :goto_3

    .end local v12           #n:I
    .restart local v13       #n:I
    :cond_7
    move v12, v13

    .line 166
    .end local v13           #n:I
    .restart local v12       #n:I
    goto/16 :goto_1

    .line 167
    .end local v3           #ac:Ljava/lang/String;
    .end local v5           #call_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v8           #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v10           #localListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #num:I
    .end local v17           #total:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->dissmissPD()V

    .line 168
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$102(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;)Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    .line 174
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->resetActionBar(I)V

    .line 176
    return-void
.end method
