.class public Lcom/android/mipop/appwidget/SingleGridAppWidget;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field private static dF:Z


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private dD:Landroid/appwidget/AppWidgetManager;

.field private dE:[I

.field private dG:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const-string v0, "Suhao.SingleGridAppWidget"

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    iput-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/android/mipop/appwidget/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/appwidget/c;-><init>(Lcom/android/mipop/appwidget/SingleGridAppWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dG:Landroid/database/ContentObserver;

    return-void
.end method

.method private S()I
    .locals 4

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singelWidget getDatabaseMipop() mipopContent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private T()Landroid/widget/RemoteViews;
    .locals 5

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singlegrid: buildUpdate() packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030011

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widgetMipopUpdate"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0c0077

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->a(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 7

    const v6, 0x7f0c007a

    const v5, 0x7f0c0078

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->S()I

    move-result v0

    if-ne v1, v0, :cond_1

    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dF:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singlegrid: updateUI()  statusMipop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dF:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-void

    :cond_1
    sput-boolean v3, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dF:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    return v0
.end method

.method static synthetic b(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup()  context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dE:[I

    return-void
.end method

.method private c(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyDatabaseMipop() value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "MIPOP"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_1
    const-string v1, "MIPOP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    const-string v1, "singlegrid: : widgetMipopStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dF:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->c(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onDisabled()"

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnabled() context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singlegrid: onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widgetMipopUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->d(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->T()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dE:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    iget-object v5, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
