.class public Lcom/zte/heartyservice/power/AbnormalAppsActivity;
.super Landroid/app/Activity;
.source "AbnormalAppsActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/AbnormalAppsActivity$MyExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "NAME"

.field private static final PKG:Ljava/lang/String; = "PKG"

.field private static final PKG_INFO:Ljava/lang/String; = "PKG_INFO"

.field private static final REFRESH_UI:I = 0x0

.field private static final SELECTED:Ljava/lang/String; = "SELECTED"


# instance fields
.field private mAdapter:Landroid/widget/BaseExpandableListAdapter;

.field private final mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mGroupData:Ljava/util/List;
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

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ExpandableListView;

.field private mMenu:Landroid/view/Menu;

.field private mSelectedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mGroupData:Ljava/util/List;

    .line 38
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mChildData:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    .line 162
    new-instance v0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity$2;-><init>(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/widget/BaseExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mChildData:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected addGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "groupName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, childrens:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, groupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "NAME"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mChildData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 55
    return-void
.end method

.method protected getAbnormalPkgForReason(Ljava/util/Map;I)Ljava/util/List;
    .locals 7
    .parameter
    .parameter "reason"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, abnormalPkgList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    .local v1, childrens:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p1, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, pkg:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;

    .line 64
    .local v4, pkgInfo:Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;
    iget v5, v4, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;->reason:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, childMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "NAME"

    iget-object v6, v4, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;->pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

    iget-object v6, v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->label:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v5, "SELECTED"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v5, "PKG_INFO"

    iget-object v6, v4, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;->pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v5, "PKG"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0           #childMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    .end local v4           #pkgInfo:Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;
    :cond_1
    return-object v1
.end method

.method protected loadData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 119
    iget-object v3, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 120
    iget-object v3, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mChildData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 121
    iget-object v3, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 123
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, abnormal_event:[Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/heartyservice/power/SmartPowerManager;->getAbnormalPkg(Z)Ljava/util/Map;

    move-result-object v0

    .line 127
    .local v0, abnormalPkgList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 128
    aget-object v3, v1, v2

    shl-int v4, v5, v2

    invoke-virtual {p0, v0, v4}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->getAbnormalPkgForReason(Ljava/util/Map;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->addGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 137
    iget-object v4, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mChildData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 139
    .local v1, childMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "SELECTED"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 140
    .local v0, checked:Z
    const-string v7, "SELECTED"

    if-nez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "PKG"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 143
    .local v3, reason:Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 146
    :cond_0
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int v7, v5, p3

    and-int/2addr v6, v7

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 152
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    .line 153
    iget-object v4, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_2
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->refreshUI(J)V

    .line 158
    return v5

    .end local v2           #pkg:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/Integer;
    :cond_1
    move v4, v6

    .line 140
    goto :goto_0

    .line 149
    .restart local v2       #pkg:Ljava/lang/String;
    .restart local v3       #reason:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int v6, v5, p3

    or-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 155
    :cond_3
    iget-object v4, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    .line 82
    .local v11, actionBar:Landroid/app/ActionBar;
    const v0, 0x7f0a05be

    invoke-virtual {v11, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 85
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 87
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 90
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 91
    .local v14, point:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 92
    .local v12, display:Landroid/view/Display;
    invoke-virtual {v12, v14}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 93
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    .local v13, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v12, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mList:Landroid/widget/ExpandableListView;

    iget v1, v14, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x420c

    iget v3, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v14, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x4120

    iget v4, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 98
    new-instance v0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$MyExpandableListAdapter;

    iget-object v3, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mGroupData:Ljava/util/List;

    const v4, 0x7f03005d

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NAME"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v2, 0x7f0e0005

    aput v2, v6, v1

    iget-object v7, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mChildData:Ljava/util/List;

    const v8, 0x7f030001

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NAME"

    aput-object v2, v9, v1

    const/4 v1, 0x1

    new-array v10, v1, [I

    const/4 v1, 0x0

    const v2, 0x7f0e0005

    aput v2, v10, v1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/zte/heartyservice/power/AbnormalAppsActivity$MyExpandableListAdapter;-><init>(Lcom/zte/heartyservice/power/AbnormalAppsActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    new-instance v1, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity$1;-><init>(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->loadData()V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 215
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 216
    iput-object p1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mMenu:Landroid/view/Menu;

    .line 218
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->refreshUI(J)V

    .line 219
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 235
    :goto_0
    return v2

    .line 226
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mSelectedItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    .local v1, pkg:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/zte/heartyservice/power/SmartPowerManager;->setPkgIgnore(Ljava/lang/String;I)V

    goto :goto_1

    .line 230
    .end local v1           #pkg:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->loadData()V

    .line 235
    const/4 v2, 0x1

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0415
        :pswitch_0
    .end packed-switch
.end method

.method protected refreshUI(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    .line 176
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
