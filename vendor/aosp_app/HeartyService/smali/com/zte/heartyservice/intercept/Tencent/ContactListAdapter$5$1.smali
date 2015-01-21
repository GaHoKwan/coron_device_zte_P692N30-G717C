.class Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 189
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createCallLogDao()Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v5

    #setter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$602(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    .line 190
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createSMSDao()Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v5

    #setter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$702(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    .line 192
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v5, v5, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->val$address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->getByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, calllogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v5, v5, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->val$address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->getByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int v1, v4, v5

    .line 196
    .local v1, counter:I
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Ljava/util/List;)Z

    .line 197
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->recover(Ljava/util/List;)Z

    .line 200
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a022a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, prefix:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a022c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 202
    return-void

    .line 200
    .end local v2           #prefix:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a022b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
