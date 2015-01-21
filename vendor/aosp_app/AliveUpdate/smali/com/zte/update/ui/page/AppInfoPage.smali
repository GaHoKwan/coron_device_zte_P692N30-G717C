.class public Lcom/zte/update/ui/page/AppInfoPage;
.super Lcom/zte/update/ui/page/BaseLinearLayout;
.source "AppInfoPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;

.field protected checkButton:Landroid/widget/ImageButton;

.field protected checkLayout:Landroid/view/View;

.field protected checkMsg:Landroid/widget/TextView;

.field protected check_title:Landroid/widget/TextView;

.field protected face:Landroid/widget/ImageView;

.field protected itemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/zte/update/ui/page/AppInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/ListView;

.field protected newAppNum:I

.field protected refreshdate:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const v0, 0x7f030004

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/page/BaseLinearLayout;-><init>(Landroid/content/Context;I)V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->itemMap:Ljava/util/Map;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->newAppNum:I

    .line 50
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    .line 51
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->mListView:Landroid/widget/ListView;

    .line 53
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoPage;->initCheckLayout()V

    .line 55
    return-void
.end method

.method private initCheckLayout()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->face:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->check_title:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->refreshdate:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkMsg:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkButton:Landroid/widget/ImageButton;

    .line 67
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/zte/update/ui/page/AppInfoPage$1;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/page/AppInfoPage$1;-><init>(Lcom/zte/update/ui/page/AppInfoPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

.method private showDataNetworkAlertPop()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/zte/update/ui/page/AppInfoPage$2;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/update/ui/page/AppInfoPage$2;-><init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;)V

    .line 110
    .local v0, pop:Lcom/zte/update/ui/pop/DataNetworkAlertPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/DataNetworkAlertPop;->update()V

    .line 111
    return-void
.end method

.method private showNetworkAlertPop()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/zte/update/ui/pop/NetworkAlertPop;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/update/ui/pop/NetworkAlertPop;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, pop:Lcom/zte/update/ui/pop/NetworkAlertPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/NetworkAlertPop;->update()V

    .line 100
    return-void
.end method

.method private showProgressPop()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/zte/update/ui/pop/ProgressPop;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/update/ui/pop/ProgressPop;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, pop:Lcom/zte/update/ui/pop/ProgressPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/ProgressPop;->update()V

    .line 94
    return-void
.end method


# virtual methods
.method public displayCheckPopupWindow()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public handleDownloadStatusRefresh()V
    .locals 3

    .prologue
    .line 252
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoPage;->itemMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/ui/page/AppInfoItem;

    .line 253
    .local v1, item:Lcom/zte/update/ui/page/AppInfoItem;
    invoke-virtual {v1}, Lcom/zte/update/ui/page/AppInfoItem;->handleStatus()V

    goto :goto_0

    .line 256
    .end local v1           #item:Lcom/zte/update/ui/page/AppInfoItem;
    :cond_0
    return-void
.end method

.method public handleDownloadStatusRefresh([Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 248
    return-void
.end method

.method public handleNewAppChecked()I
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->newAppNum:I

    .line 233
    invoke-virtual {p0}, Lcom/zte/update/ui/page/AppInfoPage;->refreshAppInfoList()V

    .line 235
    iget v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->newAppNum:I

    return v0
.end method

.method public handleNewAppCheckedError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->face:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->refreshdate:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->check_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkMsg:Landroid/widget/TextView;

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    return-void
.end method

.method public initListViewMenuListener()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/update/ui/page/AppInfoPage$4;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/page/AppInfoPage$4;-><init>(Lcom/zte/update/ui/page/AppInfoPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 324
    return-void
.end method

.method public refreshAppInfoList()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 151
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/update/data/DataManager;->getUpdateCheckKeys()Ljava/util/Collection;

    move-result-object v0

    .line 152
    .local v0, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAppInfoList list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    iput v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->newAppNum:I

    .line 155
    invoke-static {}, Lcom/zte/update/data/storage/DataBaseStorage;->isRest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoPage;->initCheckLayout()V

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->newAppNum:I

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->face:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->refreshdate:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->check_title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->face:Landroid/widget/ImageView;

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkMsg:Landroid/widget/TextView;

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->itemMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 174
    new-instance v1, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;

    invoke-virtual {p0}, Lcom/zte/update/ui/page/AppInfoPage;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;-><init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->adapter:Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;

    .line 175
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoPage;->adapter:Lcom/zte/update/ui/page/AppInfoPage$PageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public startCheck()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoPage;->showProgressPop()V

    .line 81
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startCheck(I)V

    .line 84
    return-void
.end method

.method public startCheckWithNetworkCheck()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/zte/update/ui/page/AppInfoPage$3;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/update/ui/page/AppInfoPage$3;-><init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;)V

    .line 141
    .local v0, pop:Lcom/zte/update/ui/pop/CheckActionWithPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/CheckActionWithPop;->startAction()V

    .line 143
    return-void
.end method
