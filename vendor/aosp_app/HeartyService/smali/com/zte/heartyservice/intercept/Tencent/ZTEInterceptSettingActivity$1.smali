.class Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;
.super Ljava/lang/Object;
.source "ZTEInterceptSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getIsClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 92
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v2

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getInterceptModeType()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 94
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->setData(Ljava/util/ArrayList;)V

    .line 95
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getInterceptModeType()I

    move-result v1

    invoke-static {v2, v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->checkWhiteList(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
