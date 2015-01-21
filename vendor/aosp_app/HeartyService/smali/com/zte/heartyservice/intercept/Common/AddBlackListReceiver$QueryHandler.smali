.class Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AddBlackListReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    .line 93
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/high16 v7, 0x1400

    .line 98
    const-string v4, "AddBlackListReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuji debug phonestate cursor count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    move-object v3, p2

    .line 100
    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, num:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 102
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    new-instance v5, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->access$000(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->m_MarkLocalDataBaseAdapter_2:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    .line 103
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->m_MarkLocalDataBaseAdapter_2:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->open()V

    .line 104
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->m_MarkLocalDataBaseAdapter_2:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 106
    .local v2, miCount:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->m_MarkLocalDataBaseAdapter_2:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    .line 109
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v2, :cond_2

    .line 111
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->access$000(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const-string v4, "phone_num"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->access$000(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #miCount:I
    .end local v3           #num:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 119
    .restart local v0       #cur:Landroid/database/Cursor;
    .restart local v2       #miCount:I
    .restart local v3       #num:Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->access$000(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    const-string v4, "phone_num"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->this$0:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->access$000(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
