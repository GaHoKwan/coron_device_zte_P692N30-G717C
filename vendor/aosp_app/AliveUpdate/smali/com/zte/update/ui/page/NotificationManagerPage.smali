.class public Lcom/zte/update/ui/page/NotificationManagerPage;
.super Lcom/zte/update/ui/page/BaseLinearLayout;
.source "NotificationManagerPage.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;,
        Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field notificationListView:Landroid/widget/LinearLayout;

.field receiver:Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;

.field unNotificationListView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const v0, 0x7f030011

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/page/BaseLinearLayout;-><init>(Landroid/content/Context;I)V

    .line 103
    new-instance v0, Lcom/zte/update/ui/page/NotificationManagerPage$1;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/page/NotificationManagerPage$1;-><init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    iput-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->handler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/zte/update/ui/page/NotificationManagerPage;->registyInstallReceiver()V

    .line 48
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 49
    new-instance v0, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;-><init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/zte/update/ui/page/NotificationManagerPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/update/ui/page/NotificationManagerPage;->intiNotificationListView()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/update/ui/page/NotificationManagerPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/update/ui/page/NotificationManagerPage;->intiUnNotificationListView()V

    return-void
.end method

.method private declared-synchronized intiNotificationListView()V
    .locals 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/update/data/DataManager;->getNotifyRequestMainKeys()Ljava/util/Collection;

    move-result-object v0

    .line 72
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const v4, 0x7f0a004e

    invoke-virtual {p0, v4}, Lcom/zte/update/ui/page/NotificationManagerPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->notificationListView:Landroid/widget/LinearLayout;

    .line 73
    iget-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->notificationListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 74
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 76
    .local v3, key:Ljava/lang/Object;
    :try_start_1
    new-instance v2, Lcom/zte/update/ui/page/NotificationItem;

    iget-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/zte/update/ui/page/NotificationItem;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 77
    .local v2, item:Lcom/zte/update/ui/page/NotificationItem;
    iget-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->notificationListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    .end local v2           #item:Lcom/zte/update/ui/page/NotificationItem;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 81
    .end local v3           #key:Ljava/lang/Object;
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized intiUnNotificationListView()V
    .locals 5

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/update/data/DataManager;->getUnNotifyRequestMainKeys()Ljava/util/Collection;

    move-result-object v0

    .line 60
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/zte/update/ui/page/NotificationManagerPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->unNotificationListView:Landroid/widget/LinearLayout;

    .line 61
    iget-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->unNotificationListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 64
    .local v3, key:Ljava/lang/Object;
    :try_start_1
    new-instance v2, Lcom/zte/update/ui/page/NotificationItem;

    iget-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/zte/update/ui/page/NotificationItem;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 65
    .local v2, item:Lcom/zte/update/ui/page/NotificationItem;
    iget-object v4, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->unNotificationListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    .end local v2           #item:Lcom/zte/update/ui/page/NotificationItem;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 68
    .end local v3           #key:Ljava/lang/Object;
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 55
    const-string v0, "onViewRemoved"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public registyInstallReceiver()V
    .locals 3

    .prologue
    .line 133
    new-instance v1, Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;-><init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    iput-object v1, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->receiver:Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->receiver:Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 86
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v4, 0x0

    .line 90
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 91
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 96
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public unregistyInstallReceiver()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->receiver:Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method
