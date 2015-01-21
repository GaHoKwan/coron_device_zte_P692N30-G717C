.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
.super Landroid/widget/BaseAdapter;
.source "InterceptKeywordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "keywordAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mInstanse:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 229
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 230
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->mInstanse:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    .line 231
    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;)Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->mInstanse:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 260
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;)V

    .line 261
    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030072

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 262
    const v1, 0x7f0e0146

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 263
    const v1, 0x7f0e0147

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;->viewBtn:Landroid/widget/Button;

    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 269
    :goto_0
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;->viewBtn:Landroid/widget/Button;

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-object p2

    .line 267
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setdata(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, Keywordlistdata:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    #setter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->access$402(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Ljava/util/List;)Ljava/util/List;

    .line 235
    return-void
.end method
