.class public abstract Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "AbsVideoFavoritesWidget.java"


# static fields
.field public static final ACTION_REFRESH:Ljava/lang/String; = "com.mediatek.videofavorites.REFRESH"

.field private static final TAG:Ljava/lang/String; = "AbsVideoFavoritesWidget"

.field static sWorkerQueue:Landroid/os/Handler;

.field static sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 61
    return-void
.end method

.method private prepareWorkerQueue()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->sWorkerQueue:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoFavoritesWidget-worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->sWorkerThread:Landroid/os/HandlerThread;

    .line 109
    sget-object v0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    :cond_1
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->sWorkerQueue:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method protected abstract getCollectionViewId()I
.end method

.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .parameter "c"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->mComponentName:Landroid/content/ComponentName;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getRecordPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "c"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    const-string v1, "action_launch_recorder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string v2, "AbsVideoFavoritesWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v2, "com.mediatek.videofavorites.REFRESH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 142
    .local v1, apm:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->getCollectionViewId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 145
    .end local v1           #apm:Landroid/appwidget/AppWidgetManager;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .parameter "c"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 119
    array-length v2, p3

    .line 121
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 122
    aget v0, p3, v1

    .line 123
    .local v0, appWidgetId:I
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->update(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 124
    .local v3, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 125
    const-string v4, "AbsVideoFavoritesWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appwidgetId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v0           #appWidgetId:I
    .end local v3           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method protected abstract update(Landroid/content/Context;)Landroid/widget/RemoteViews;
.end method
