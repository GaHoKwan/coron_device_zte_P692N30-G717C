.class public Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;
.super Landroid/app/Fragment;
.source "RetrieveLocalTabViewFragment.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRetrieveLocalControlView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/zte/retrieve/iview/IRetrieveLocalControlView;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final IMG:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TITLE:Ljava/lang/String;

.field private mActiveViewStatus:Z

.field private mCmdlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

.field private mTabViewListener:Landroid/view/View$OnClickListener;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    const-string v0, "title"

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->IMG:Ljava/lang/String;

    .line 51
    const-string v0, "info"

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->TITLE:Ljava/lang/String;

    .line 52
    const-string v0, "tag"

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->TAG:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$1;-><init>(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 111
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    const v2, 0x7f020025

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "info"

    const v2, 0x7f06008c

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "tag"

    const-string v2, "lock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    const v2, 0x7f020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "info"

    const v2, 0x7f06008d

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "tag"

    const-string v2, "ring"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    const v2, 0x7f020024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "info"

    const v2, 0x7f06008f

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "tag"

    const-string v2, "locate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    const v2, 0x7f020023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "info"

    const v2, 0x7f06008e

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "tag"

    const-string v2, "erase"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    return-object v1
.end method

.method private initListView()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 98
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    const v3, 0x7f030003

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 100
    const-string v6, "info"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 99
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 101
    .local v0, cmdListAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    return-void

    .line 100
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x9t 0x7ft
        0x9t 0x0t 0x9t 0x7ft
    .end array-data
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 168
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    .line 58
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    invoke-direct {v0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    .line 59
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->setContext(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    invoke-virtual {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const v3, 0x7f030017

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    .line 79
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    const v4, 0x7f09005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mListView:Landroid/widget/ListView;

    .line 80
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->initListView()V

    .line 82
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, backupInstructBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, activeLocalBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, helpRetrieveBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->getActiveStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mActiveViewStatus:Z

    .line 92
    iget-boolean v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mActiveViewStatus:Z

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->setActiveViewSwitch(Z)V

    .line 94
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
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
    .line 209
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mCmdlist:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 211
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    const-string v1, "tag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->instructPresentClick(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->getData()Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelected(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->getActiveStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mActiveViewStatus:Z

    .line 72
    iget-boolean v0, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mActiveViewStatus:Z

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->setActiveViewSwitch(Z)V

    .line 73
    return-void
.end method

.method public setActiveViewSwitch(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    .local v0, localButtonView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mView:Landroid/view/View;

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    .local v1, localStatusView:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 189
    const v2, 0x7f02004a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 191
    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    const v2, 0x7f020049

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 194
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public showCloseDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 221
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    iget-object v5, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 221
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;->getDialogLayout()Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, dialogLayout:Landroid/view/View;
    const v3, 0x7f090010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 226
    .local v2, mEditText:Landroid/widget/EditText;
    const v3, 0x7f090011

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$2;-><init>(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v3, 0x7f090012

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;

    invoke-direct {v4, p0, v2, v0}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;-><init>(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;Landroid/widget/EditText;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method
