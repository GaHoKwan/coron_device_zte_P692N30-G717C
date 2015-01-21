.class public abstract Lcom/zte/heartservice/common/AbstractLocationChooseActivity;
.super Landroid/app/Activity;
.source "AbstractLocationChooseActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field public static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field protected mAdapter:Landroid/widget/BaseExpandableListAdapter;

.field protected final mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mList:Landroid/widget/ExpandableListView;

.field private final mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private final mSearchExpandListener:Landroid/view/MenuItem$OnActionExpandListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mChildData:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$1;-><init>(Lcom/zte/heartservice/common/AbstractLocationChooseActivity;)V

    iput-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 102
    new-instance v0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$2;-><init>(Lcom/zte/heartservice/common/AbstractLocationChooseActivity;)V

    iput-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mSearchExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 28
    return-void
.end method


# virtual methods
.method protected addGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "groupName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v1, curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "NAME"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mChildData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 73
    return-object v0
.end method

.method protected abstract loadData(Ljava/lang/String;)V
.end method

.method public abstract onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f0b0003

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    .line 50
    iget-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 51
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 52
    .local v10, point:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 53
    iget-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget v1, v10, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x32

    iget v2, v10, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 55
    new-instance v0, Landroid/widget/SimpleExpandableListAdapter;

    iget-object v2, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    .line 56
    const v3, 0x7f030004

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "NAME"

    aput-object v1, v4, v11

    .line 57
    new-array v5, v9, [I

    aput v12, v5, v11

    iget-object v6, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mChildData:Ljava/util/List;

    .line 58
    const v7, 0x7f030005

    new-array v8, v9, [Ljava/lang/String;

    const-string v1, "NAME"

    aput-object v1, v8, v11

    .line 59
    new-array v9, v9, [I

    aput v12, v9, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 55
    iput-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 60
    iget-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->loadData(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    const v2, 0x7f0b000b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    .local v0, searchMenu:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 84
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 85
    .local v1, searchView:Landroid/widget/SearchView;
    iget-object v2, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 86
    iget-object v2, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->mSearchExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method
