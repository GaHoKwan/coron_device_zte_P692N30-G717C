.class public abstract Lcom/mediatek/videofavorites/WidgetHostActivity;
.super Landroid/app/Activity;
.source "WidgetHostActivity.java"


# static fields
.field private static final HOST_ID:I = 0x309

.field private static final TAG:Ljava/lang/String; = "WidgetHostActivity"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAppWidgetInfoByLabel(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 8
    .parameter "mgr"
    .parameter "label"

    .prologue
    const/4 v4, 0x0

    .line 73
    if-nez p2, :cond_1

    move-object v1, v4

    .line 88
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 78
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 80
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 81
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 82
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    const-string v5, "WidgetHostActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppWidget not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 88
    goto :goto_0
.end method


# virtual methods
.method public findWidgetViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .parameter "baseView"
    .parameter "id"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 173
    .end local p1
    :goto_0
    return-object p1

    .line 162
    .restart local p1
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 163
    check-cast v3, Landroid/view/ViewGroup;

    .line 164
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 166
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 167
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/videofavorites/WidgetHostActivity;->findWidgetViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    move-object p1, v2

    .line 169
    goto :goto_0

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected abstract getWidgetLabel()Ljava/lang/String;
.end method

.method public getWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 104
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 105
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    const/16 v5, 0x309

    invoke-direct {v4, p0, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 107
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    iput v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetId:I

    .line 108
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0}, Lcom/mediatek/videofavorites/WidgetHostActivity;->getWidgetLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/videofavorites/WidgetHostActivity;->getAppWidgetInfoByLabel(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 110
    .local v0, appWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v5, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetId:I

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 118
    const v4, 0x7f090010

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 120
    .local v3, rootView:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v2, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 122
    .local v2, layoutParam:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v5, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetId:I

    invoke-virtual {v4, p0, v5, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 124
    .local v1, hv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 130
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetHostActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 137
    return-void
.end method
