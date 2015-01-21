.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;
.super Landroid/widget/BaseAdapter;
.source "InterceptKeywordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, listdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/KeyWordDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->showRemoveDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;)Ltmsdk/common/module/aresengine/IKeyWordDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    return-object v0
.end method

.method private showRemoveDialog(Ljava/lang/String;)V
    .locals 6
    .parameter "keyword"

    .prologue
    .line 87
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 88
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0221

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, infoDelFormatt:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, infoDelText:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    const v4, 0x7f0a0226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v4, 0x7f0a021e

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$3;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03006f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;

    invoke-direct {v0, v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;)V

    .line 63
    .local v0, holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;
    const v2, 0x7f0e013e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;->mName:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0e0141

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;->mDelBtn:Landroid/widget/Button;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, keyword:Ljava/lang/String;
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;->mDelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object p2

    .line 68
    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;
    .end local v1           #keyword:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$BodyViewHolder;
    goto :goto_0
.end method
