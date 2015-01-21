.class public Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;
    }
.end annotation


# instance fields
.field abstractListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;"
        }
    .end annotation
.end field

.field private listViewCallBacks:Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p3, p0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->abstractListItems:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->abstractListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/zte/heartyservice/apksmanager/AbstractListItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->abstractListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->getItem(I)Lcom/zte/heartyservice/apksmanager/AbstractListItem;

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
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->getItem(I)Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    move-result-object v0

    .line 29
    .local v0, abstractListItem:Lcom/zte/heartyservice/apksmanager/AbstractListItem;
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->listViewCallBacks:Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;

    invoke-interface {v1, v0, p1, p2}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;->updateViewInfo(Lcom/zte/heartyservice/apksmanager/AbstractListItem;ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V
    .locals 0
    .parameter "listViewCallBacks"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->listViewCallBacks:Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;

    .line 60
    return-void
.end method
