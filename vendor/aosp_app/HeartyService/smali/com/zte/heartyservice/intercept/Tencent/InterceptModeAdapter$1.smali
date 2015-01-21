.class Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;
.super Ljava/lang/Object;
.source "InterceptModeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 83
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 98
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getInterceptModeType()I

    move-result v2

    invoke-static {v3, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->checkWhiteList(Landroid/content/Context;I)V

    .line 99
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v3

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getInterceptModeType()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 101
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->setData(Ljava/util/ArrayList;)V

    .line 102
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
