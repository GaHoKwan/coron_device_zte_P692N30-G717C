.class public Lcom/zte/heartyservice/intercept/Common/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Common/GridAdapter$1;,
        Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Common/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 60
    if-nez p2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;

    invoke-direct {v0, p0, v4}, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;-><init>(Lcom/zte/heartyservice/intercept/Common/GridAdapter;Lcom/zte/heartyservice/intercept/Common/GridAdapter$1;)V

    .line 63
    .local v0, holder:Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;
    const v2, 0x7f0e0033

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;->appImage:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f0e0107

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;->appName:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Common/GridInfo;

    .line 72
    .local v1, info:Lcom/zte/heartyservice/intercept/Common/GridInfo;
    if-eqz v1, :cond_0

    .line 73
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Common/GridInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    return-object p2

    .line 68
    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;
    .end local v1           #info:Lcom/zte/heartyservice/intercept/Common/GridInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;
    goto :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Common/GridInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Common/GridInfo;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->list:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method
