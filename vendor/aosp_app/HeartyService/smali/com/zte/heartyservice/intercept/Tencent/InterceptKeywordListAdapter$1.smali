.class Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;
.super Ljava/lang/Object;
.source "InterceptKeywordListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 73
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;->val$keyword:Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->showRemoveDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;Ljava/lang/String;)V

    .line 78
    return-void
.end method
