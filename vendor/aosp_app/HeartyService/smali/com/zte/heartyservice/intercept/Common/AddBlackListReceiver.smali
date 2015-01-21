.class public Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddBlackListReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;
    }
.end annotation


# instance fields
.field private inComing:Z

.field private lastIdleTime:J

.field private lastOffhookTime:J

.field private mContext:Landroid/content/Context;

.field private mQueryHandler:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;

.field m_MarkLocalDataBaseAdapter_2:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->number:Ljava/lang/String;

    .line 43
    iput-wide v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->lastOffhookTime:J

    .line 44
    iput-wide v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->lastIdleTime:J

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->inComing:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showAddDialog(Ljava/lang/String;)V
    .locals 9
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "AddBlackListReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug phonestate show add dialog number:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 83
    .local v8, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v8, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mQueryHandler:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "data1"

    aput-object v2, v4, v1

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mContext:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mQueryHandler:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;-><init>(Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->mQueryHandler:Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver$QueryHandler;

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, state:Ljava/lang/String;
    const-string v1, "AddBlackListReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji debug phonestate state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "RINGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "incoming_number"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->number:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->inComing:Z

    .line 74
    .end local v0           #state:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 64
    .restart local v0       #state:Ljava/lang/String;
    :cond_2
    const-string v1, "OFFHOOK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->lastOffhookTime:J

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "IDLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->lastIdleTime:J

    .line 68
    iget-wide v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->lastIdleTime:J

    iget-wide v3, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->lastOffhookTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->inComing:Z

    if-eqz v1, :cond_4

    .line 69
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->number:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->showAddDialog(Ljava/lang/String;)V

    .line 71
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;->inComing:Z

    goto :goto_0
.end method
