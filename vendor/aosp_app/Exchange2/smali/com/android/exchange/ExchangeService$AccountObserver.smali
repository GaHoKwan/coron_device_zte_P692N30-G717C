.class Lcom/android/exchange/ExchangeService$AccountObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountObserver"
.end annotation


# instance fields
.field mEasAccountSelector:Ljava/lang/String;

.field private mLastThread:Ljava/lang/Thread;

.field mSyncableEasMailboxSelector:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
    .locals 10
    .parameter
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    .line 821
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 822
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 815
    iput-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 816
    iput-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 825
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 826
    .local v2, context:Landroid/content/Context;
    iget-object v6, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v6

    .line 828
    :try_start_0
    iget-object v5, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    #calls: Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    invoke-static {v2, v5}, Lcom/android/exchange/ExchangeService;->access$700(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :try_start_1
    iget-object v5, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 835
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v5, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 837
    .local v1, cnt:I
    if-nez v1, :cond_0

    .line 839
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v7, v8, v2}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(JLandroid/content/Context;)V

    goto :goto_0

    .line 842
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #cnt:I
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 829
    :catch_0
    move-exception v3

    .line 831
    .local v3, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_2
    monitor-exit v6

    .line 843
    .end local v3           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_1
    return-void

    .line 842
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$1900(Lcom/android/exchange/ExchangeService$AccountObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$AccountObserver;->updateAccountHoldInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exchange/ExchangeService$AccountObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private addAccountMailbox(JLandroid/content/Context;)V
    .locals 5
    .parameter "acctId"
    .parameter "context"

    .prologue
    .line 1095
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1098
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing account failed for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1113
    :goto_0
    return-void

    .line 1104
    :cond_0
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 1105
    .local v1, main:Lcom/android/emailcommon/provider/Mailbox;
    const-string v2, "__eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__eas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 1107
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 1108
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 1109
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 1110
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 1111
    invoke-virtual {v1, p3}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAccountChanged()V
    .locals 25

    .prologue
    .line 920
    const-string v18, "ExchangeService"

    const-string v19, "On account changed"

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 923
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 927
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_0

    .line 928
    const-string v18, "ExchangeService"

    const-string v19, "onAccountChanged but context is null"

    invoke-static/range {v18 .. v19}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    .end local v7           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 934
    .restart local v7       #context:Landroid/content/Context;
    :cond_0
    new-instance v8, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v8}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .local v8, currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    :try_start_1
    #calls: Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->access$700(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    :try_end_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 941
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 942
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/Account;

    .line 943
    .local v5, account:Lcom/android/emailcommon/provider/Account;
    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_2

    const/4 v6, 0x1

    .line 947
    .local v6, accountIncomplete:Z
    :goto_2
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v18

    if-nez v18, :cond_4

    if-nez v6, :cond_4

    .line 949
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Observer found deleted account: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 953
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 955
    .local v10, deletedAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v10, :cond_3

    .line 957
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Account still in provider: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v8, v5}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    goto :goto_1

    .line 1072
    .end local v5           #account:Lcom/android/emailcommon/provider/Account;
    .end local v6           #accountIncomplete:Z
    .end local v10           #deletedAccount:Lcom/android/emailcommon/provider/Account;
    .end local v13           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v18
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1076
    .end local v7           #context:Landroid/content/Context;
    .end local v8           #currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    :catch_0
    move-exception v11

    .line 1077
    .local v11, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    const-string v18, "Observer failed; provider unavailable"

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 937
    .end local v11           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v7       #context:Landroid/content/Context;
    .restart local v8       #currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    :catch_1
    move-exception v11

    .restart local v11       #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    goto/16 :goto_0

    .line 943
    .end local v11           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v5       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 961
    .restart local v6       #accountIncomplete:Z
    .restart local v10       #deletedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_3
    :try_start_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Account deletion confirmed: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/ExchangeService;->access$500(Lcom/android/exchange/ExchangeService;JZZ)V

    .line 963
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 964
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 966
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/mediatek/exchange/smartpush/SmartPushService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 972
    .end local v10           #deletedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_4
    const-string v18, "ExchangeService"

    const-string v20, "An account has changed"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v17

    .line 976
    .local v17, updatedAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v17, :cond_1

    .line 977
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v16, v0

    .line 980
    .local v16, syncInterval:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    const/16 v20, -0x5

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 982
    const/16 v16, -0x2

    .line 983
    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v15

    .line 986
    .local v15, prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    invoke-virtual {v15}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->removeLastCalculateTime()V

    .line 987
    const-string v18, "account changed to smart push"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/exchange/smartpush/SmartPushService;->kick(Ljava/lang/String;)V

    .line 993
    .end local v15           #prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    :cond_5
    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 995
    :cond_6
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 996
    .local v9, cv:Landroid/content/ContentValues;
    const-string v18, "syncInterval"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v18, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    const-string v20, "accountKey=? and type = 0"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    sget-object v18, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    const-string v20, "accountKey=? and type = 66"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    sget-object v18, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    const-string v20, "accountKey=? and type = 65"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1009
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v20, "com.android.email.provider"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1027
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_7
    :goto_3
    :try_start_7
    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 1029
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Account "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " changed; stop syncs"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/ExchangeService;->access$500(Lcom/android/exchange/ExchangeService;JZZ)V

    .line 1034
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v0, v5}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #calls: Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1035
    const-string v18, "ExchangeService"

    const-string v20, "This account is no longer on security hold"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 1041
    :cond_9
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 1042
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 1043
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto/16 :goto_1

    .line 1011
    .restart local v9       #cv:Landroid/content/ContentValues;
    .restart local v14       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_2
    move-exception v11

    .line 1013
    .local v11, e:Landroid/os/RemoteException;
    const-string v18, "ExchangeService"

    const-string v20, "RemoteException whenupdating mailboxes sync interval"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1015
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    .line 1017
    .local v11, e:Landroid/content/OperationApplicationException;
    const-string v18, "ExchangeService"

    const-string v20, "OperationApplicationException whenupdating mailboxes sync interval"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1047
    .end local v5           #account:Lcom/android/emailcommon/provider/Account;
    .end local v6           #accountIncomplete:Z
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #e:Landroid/content/OperationApplicationException;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v16           #syncInterval:I
    .end local v17           #updatedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/Account;

    .line 1048
    .restart local v5       #account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v18, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1050
    iget-wide v0, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 1052
    .local v12, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v12, :cond_b

    .line 1053
    iput-object v12, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 1055
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Account observer found new account: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1056
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v7}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(JLandroid/content/Context;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 1058
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 1059
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/SmartPush;->isSmartPushAccount(Landroid/content/Context;J)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v15

    .line 1064
    .restart local v15       #prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    invoke-virtual {v15}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->removeLastCalculateTime()V

    .line 1065
    const-string v18, "smart push account added"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/exchange/smartpush/SmartPushService;->kick(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1070
    .end local v5           #account:Lcom/android/emailcommon/provider/Account;
    .end local v12           #ha:Lcom/android/emailcommon/provider/HostAuth;
    .end local v15           #prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1072
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1075
    :try_start_8
    const-string v18, "account changed"

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0
.end method

.method private updateAccountHoldInfo()V
    .locals 1

    .prologue
    .line 850
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountObserver$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$AccountObserver$1;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 867
    return-void
.end method


# virtual methods
.method public getAccountKeyWhere()Ljava/lang/String;
    .locals 8

    .prologue
    .line 900
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 903
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v5, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v5

    .line 904
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 905
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 906
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 910
    :goto_1
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 912
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 908
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 912
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 916
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getSyncableEasMailboxWhere()Ljava/lang/String;
    .locals 8

    .prologue
    .line 875
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type=4 or syncInterval!=-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 878
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v5, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v5

    .line 879
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 880
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 881
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    :goto_1
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 887
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 883
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 887
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 891
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mLastThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mLastThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 1084
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/ExchangeService$AccountObserver$2;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$AccountObserver$2;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    const-string v2, "Account Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mLastThread:Ljava/lang/Thread;

    .line 1090
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mLastThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1092
    :cond_1
    return-void
.end method
