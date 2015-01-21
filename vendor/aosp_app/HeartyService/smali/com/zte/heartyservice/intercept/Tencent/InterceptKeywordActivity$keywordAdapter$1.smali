.class Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;
.super Ljava/lang/Object;
.source "InterceptKeywordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    iget-object v1, v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ltmsdk/common/module/aresengine/IKeyWordDao;->setAll(Ljava/util/List;)V

    .line 275
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->mInstanse:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->access$500(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;)Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->notifyDataSetChanged()V

    .line 276
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->changeEmptyView()V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)V

    .line 277
    return-void
.end method
