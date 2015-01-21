.class public Lcom/mediatek/videofavorites/WidgetXLarge;
.super Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;
.source "WidgetXLarge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCollectionViewId()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f09000c

    return v0
.end method

.method protected update(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 11
    .parameter "c"

    .prologue
    const v10, 0x7f09000f

    const v9, 0x7f09000c

    const v8, 0x7f09000b

    .line 47
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030003

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 49
    .local v5, views:Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/mediatek/videofavorites/WidgetAdapter;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v1, intent:Landroid/content/Intent;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v5, v9, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 53
    const-string v6, "setDeleteModeViewId"

    const v7, 0x7f09000e

    invoke-virtual {v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 54
    const-string v6, "setDeleteIconId"

    const v7, 0x7f090004

    invoke-virtual {v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 57
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, recordIntent:Landroid/content/Intent;
    const/high16 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 59
    const/4 v6, 0x4

    invoke-virtual {v5, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    const/high16 v6, 0x1400

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p1, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 68
    .local v2, pendingIntentTemp:Landroid/app/PendingIntent;
    invoke-virtual {v5, v9, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 70
    return-object v5

    .line 61
    .end local v0           #i:Landroid/content/Intent;
    .end local v2           #pendingIntentTemp:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/AbsVideoFavoritesWidget;->getRecordPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method
