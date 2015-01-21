.class Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;
.super Ljava/lang/Object;
.source "InterceptKeywordListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->showRemoveDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

.field final synthetic val$keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->access$200(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v1

    invoke-interface {v1}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;->val$keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->access$200(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v1

    invoke-interface {v1, v0}, Ltmsdk/common/module/aresengine/IKeyWordDao;->setAll(Ljava/util/List;)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    return-void
.end method
