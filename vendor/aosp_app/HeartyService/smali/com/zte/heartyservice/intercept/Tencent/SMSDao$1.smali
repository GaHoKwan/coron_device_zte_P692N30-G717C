.class Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;
.super Ljava/lang/Object;
.source "SMSDao.java"

# interfaces
.implements Lcom/zte/heartyservice/intercept/Tencent/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->insert(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

.field final synthetic val$smslogs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;->val$smslogs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 94
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;->val$smslogs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 95
    .local v2, log:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, msg_body:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->access$000(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0220

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .end local v3           #msg_body:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->setBody(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 99
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->access$200(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->access$100(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 106
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #log:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_1
    return-void
.end method
