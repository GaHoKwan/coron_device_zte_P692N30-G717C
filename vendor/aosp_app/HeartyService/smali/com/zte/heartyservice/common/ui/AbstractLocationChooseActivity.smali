.class public abstract Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;
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
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    .line 30
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mChildData:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$1;-><init>(Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 98
    new-instance v0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$2;-><init>(Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mSearchExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

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
    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "NAME"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mChildData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 69
    return-object v0
.end method

.method protected abstract loadData(Ljava/lang/String;)V
.end method

.method public abstract onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0300df

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 44
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 45
    .local v12, point:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 46
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 47
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v10, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget v1, v12, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x420c

    iget v3, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v12, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x4120

    iget v4, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 52
    new-instance v0, Landroid/widget/SimpleExpandableListAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mGroupData:Ljava/util/List;

    const v3, 0x7f0300e0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "NAME"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v6, 0x7f0e0005

    aput v6, v5, v1

    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mChildData:Ljava/util/List;

    const v7, 0x7f0300e1

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "NAME"

    aput-object v9, v8, v1

    const/4 v1, 0x1

    new-array v9, v1, [I

    const/4 v1, 0x0

    const v13, 0x7f0e0005

    aput v13, v9, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->loadData(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d000d

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    const v2, 0x7f0e040e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, searchMenu:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 80
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 81
    .local v1, searchView:Landroid/widget/SearchView;
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 82
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->mSearchExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method
