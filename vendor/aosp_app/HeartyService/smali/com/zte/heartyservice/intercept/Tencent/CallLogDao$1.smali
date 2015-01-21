.class Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;
.super Ljava/lang/Object;
.source "CallLogDao.java"

# interfaces
.implements Lcom/zte/heartyservice/intercept/Tencent/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->insert(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

.field final synthetic val$calllogs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;->val$calllogs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 207
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;->val$calllogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 208
    .local v2, log:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->access$000(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;IZ)Landroid/content/ContentValues;

    move-result-object v0

    .line 209
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->access$200(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->access$100(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 211
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #log:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    :cond_0
    return-void
.end method
