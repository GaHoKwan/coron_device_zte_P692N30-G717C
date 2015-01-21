.class Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;
.super Landroid/os/AsyncTask;
.source "FromContactsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FromContactsStrategy;
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

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

.field private type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FromContactsStrategy;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;Ljava/util/List;)V
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
    .line 110
    .local p3, checked_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    .line 111
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 112
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    .line 113
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 26
    .parameter "params"

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const v25, 0x7f0a0341

    invoke-virtual/range {v23 .. v25}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showPD(II)V

    .line 118
    const/4 v15, 0x1

    .line 119
    .local v15, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v11

    .line 120
    .local v11, list_size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->checked_list:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .local v10, item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    move-object v13, v10

    .line 121
    check-cast v13, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;

    .line 122
    .local v13, localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->getRefName()Ljava/lang/String;

    move-result-object v17

    .line 123
    .local v17, name:Ljava/lang/String;
    if-nez v17, :cond_0

    .line 124
    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->getNumber()Ljava/lang/String;

    move-result-object v17

    .line 126
    :cond_0
    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->getAc()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, ac:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 178
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->get_ID()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteContectById(I)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    const v24, 0x7f0a0348

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v11, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    add-int/lit8 v16, v15, 0x1

    .end local v15           #n:I
    .local v16, n:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePD(I)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->isCancelled()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 182
    const/16 v23, 0x0

    move/from16 v15, v16

    .line 186
    .end local v5           #ac:Ljava/lang/String;
    .end local v10           #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v13           #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .end local v16           #n:I
    .end local v17           #name:Ljava/lang/String;
    .restart local v15       #n:I
    :goto_1
    return-object v23

    .line 130
    .restart local v5       #ac:Ljava/lang/String;
    .restart local v10       #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .restart local v13       #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .restart local v17       #name:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSmsInThread(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 132
    .local v21, sms_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/16 v18, 0x1

    .line 133
    .local v18, num:I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    .line 134
    .local v22, total:I
    if-lez v22, :cond_6

    .line 135
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v20, smsItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object/from16 v14, v20

    .line 136
    check-cast v14, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 137
    .local v14, localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 139
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    invoke-virtual {v14}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->get_ID()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverSmsById(I)Z

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    add-int/lit8 v19, v18, 0x1

    .end local v18           #num:I
    .local v19, num:I
    const v24, 0x7f0a0344

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move/from16 v18, v19

    .line 148
    .end local v19           #num:I
    .restart local v18       #num:I
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->isCancelled()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 149
    const/16 v23, 0x0

    goto :goto_1

    .line 142
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 144
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    invoke-virtual {v14}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->get_ID()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteSmsById(I)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    add-int/lit8 v19, v18, 0x1

    .end local v18           #num:I
    .restart local v19       #num:I
    const v24, 0x7f0a0345

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move/from16 v18, v19

    .end local v19           #num:I
    .restart local v18       #num:I
    goto :goto_2

    .line 154
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v20           #smsItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallInThread(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 156
    .local v7, call_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/16 v18, 0x1

    .line 157
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v22

    .line 158
    if-lez v22, :cond_1

    .line 159
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v6, callItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v12, v6

    .line 160
    check-cast v12, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    .line 161
    .local v12, localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 163
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    invoke-virtual {v12}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->get_ID()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverCallById(I)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    add-int/lit8 v19, v18, 0x1

    .end local v18           #num:I
    .restart local v19       #num:I
    const v24, 0x7f0a0346

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move/from16 v18, v19

    .line 172
    .end local v19           #num:I
    .restart local v18       #num:I
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->isCancelled()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 173
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 166
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->type:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 168
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v23

    invoke-virtual {v12}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->get_ID()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteCallById(I)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    add-int/lit8 v19, v18, 0x1

    .end local v18           #num:I
    .restart local v19       #num:I
    const v24, 0x7f0a0347

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg(Ljava/lang/String;III)V

    move/from16 v18, v19

    .end local v19           #num:I
    .restart local v18       #num:I
    goto :goto_3

    .end local v6           #callItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v7           #call_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v15           #n:I
    .end local v18           #num:I
    .end local v21           #sms_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v22           #total:I
    .restart local v16       #n:I
    :cond_a
    move/from16 v15, v16

    .line 184
    .end local v16           #n:I
    .restart local v15       #n:I
    goto/16 :goto_0

    .line 185
    .end local v5           #ac:Ljava/lang/String;
    .end local v10           #item:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v13           #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .end local v17           #name:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    move-object/from16 v23, v0

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->dissmissPD()V

    .line 186
    const/16 v23, 0x0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$102(Lcom/zte/heartyservice/privacy/FromContactsStrategy;Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;)Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    .line 192
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    .line 193
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->resetActionBar(I)V

    .line 194
    return-void
.end method
