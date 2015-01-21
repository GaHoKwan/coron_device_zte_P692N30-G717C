.class public Lcn/com/zte/yp/activityZD/CustomerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomerListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field protected resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/zte/yp/activityZD/ListElementInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->context:Landroid/content/Context;

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public addList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/zte/yp/activityZD/ListElementInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, elements:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/activityZD/ListElementInterface;>;"
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method

.method public addSectionHeaderItem(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 62
    new-instance v0, Lcn/com/zte/yp/activityZD/SingleListElement;

    invoke-direct {v0}, Lcn/com/zte/yp/activityZD/SingleListElement;-><init>()V

    .line 63
    .local v0, element:Lcn/com/zte/yp/activityZD/SingleListElement;
    invoke-virtual {v0, p1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setText(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 49
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/zte/yp/activityZD/ListElementInterface;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->context:Landroid/content/Context;

    invoke-interface {v0, v1, v2, p2}, Lcn/com/zte/yp/activityZD/ListElementInterface;->getViewForListElement(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/zte/yp/activityZD/ListElementInterface;

    invoke-interface {v0}, Lcn/com/zte/yp/activityZD/ListElementInterface;->isClickable()Z

    move-result v0

    return v0
.end method
