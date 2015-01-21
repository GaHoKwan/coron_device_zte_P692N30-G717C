.class Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;
.super Ljava/lang/Object;
.source "InterceptKeywordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, newKeyword:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, keywordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 137
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v4

    invoke-interface {v4}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 139
    .local v3, size:I
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0231

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->val$edittext:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 147
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0232

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->val$edittext:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v4

    invoke-interface {v4, v1}, Ltmsdk/common/module/aresengine/IKeyWordDao;->setAll(Ljava/util/List;)V

    .line 158
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mkeywordAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->setdata(Ljava/util/List;)V

    .line 159
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mkeywordAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->notifyDataSetChanged()V

    .line 160
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->changeEmptyView()V
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)V

    .line 161
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;->val$edittext:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
