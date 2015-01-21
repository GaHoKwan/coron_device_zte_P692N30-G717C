.class Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;
.super Landroid/os/AsyncTask;
.source "FromSmsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FromSmsStrategy;
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

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

.field private type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FromSmsStrategy;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;Ljava/util/List;)V
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
    .line 96
    .local p3, checked_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    .line 97
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 98
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    .line 99
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .parameter "params"

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const v20, 0x7f0a033c

    invoke-virtual/range {v18 .. v20}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showPD(II)V

    .line 108
    :cond_0
    :goto_0
    const/4 v10, 0x1

    .line 109
    .local v10, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    .line 110
    .local v7, list_size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .local v6, item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    move-object v8, v6

    .line 111
    check-cast v8, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 112
    .local v8, localListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    invoke-virtual {v8}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, name:Ljava/lang/String;
    if-nez v12, :cond_1

    .line 114
    invoke-virtual {v8}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 116
    :cond_1
    invoke-virtual {v8}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getAc()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, ac:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSmsInThread(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 119
    .local v16, sms_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v13, 0x1

    .line 120
    .local v13, num:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 121
    .local v17, total:I
    if-lez v17, :cond_6

    .line 122
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v15, smsItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v9, v15

    .line 123
    check-cast v9, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 124
    .local v9, localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 126
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    invoke-virtual {v9}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->get_ID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverSmsById(I)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    add-int/lit8 v14, v13, 0x1

    .end local v13           #num:I
    .local v14, num:I
    const v19, 0x7f0a0344

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move v13, v14

    .line 135
    .end local v14           #num:I
    .restart local v13       #num:I
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->isCancelled()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 136
    const/16 v18, 0x0

    .line 146
    .end local v3           #ac:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v8           #localListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v9           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #num:I
    .end local v15           #smsItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v16           #sms_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v17           #total:I
    :goto_3
    return-object v18

    .line 105
    .end local v7           #list_size:I
    .end local v10           #n:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const v20, 0x7f0a033e

    invoke-virtual/range {v18 .. v20}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showPD(II)V

    goto/16 :goto_0

    .line 129
    .restart local v3       #ac:Ljava/lang/String;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .restart local v7       #list_size:I
    .restart local v8       #localListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .restart local v9       #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .restart local v10       #n:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #num:I
    .restart local v15       #smsItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .restart local v16       #sms_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .restart local v17       #total:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 131
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    invoke-virtual {v9}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->get_ID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteSmsById(I)Z

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    add-int/lit8 v14, v13, 0x1

    .end local v13           #num:I
    .restart local v14       #num:I
    const v19, 0x7f0a0345

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_2

    .line 140
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v15           #smsItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    add-int/lit8 v11, v10, 0x1

    .end local v10           #n:I
    .local v11, n:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePD(I)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->isCancelled()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 142
    const/16 v18, 0x0

    move v10, v11

    .end local v11           #n:I
    .restart local v10       #n:I
    goto :goto_3

    .end local v10           #n:I
    .restart local v11       #n:I
    :cond_7
    move v10, v11

    .line 144
    .end local v11           #n:I
    .restart local v10       #n:I
    goto/16 :goto_1

    .line 145
    .end local v3           #ac:Ljava/lang/String;
    .end local v6           #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v8           #localListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #num:I
    .end local v16           #sms_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v17           #total:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    move-object/from16 v18, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->dissmissPD()V

    .line 146
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$102(Lcom/zte/heartyservice/privacy/FromSmsStrategy;Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;)Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    .line 152
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    .line 153
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->resetActionBar(I)V

    .line 154
    return-void
.end method
