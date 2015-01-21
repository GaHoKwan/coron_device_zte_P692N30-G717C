.class public Lcom/android/mipop/appwidget/AppWidget;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field private static gd:Z

.field private static ge:Z


# instance fields
.field private final DBG:Z

.field private TAG:Ljava/lang/String;

.field private dD:Landroid/appwidget/AppWidgetManager;

.field private dE:[I

.field private dG:Landroid/database/ContentObserver;

.field private gf:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->gd:Z

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const-string v0, "Suhao.AppWidget"

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/appwidget/AppWidget;->DBG:Z

    iput-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/android/mipop/appwidget/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/appwidget/a;-><init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->dG:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mipop/appwidget/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/appwidget/b;-><init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->gf:Landroid/database/ContentObserver;

    return-void
.end method

.method private S()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singelWidget getDatabaseMipop mipopContent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

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

    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v1, "singelWidget mipop SettingNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private T()Landroid/widget/RemoteViews;
    .locals 6

    const/high16 v5, 0x800

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildUpdate() mNavbarStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aE()Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->gd:Z

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aF()Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030001

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widgetMipopStatusUpdate"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widgetNavbarStatusUpdate"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->a(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/mipop/appwidget/AppWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    if-nez v0, :cond_0

    const v0, 0x7f0c000d

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c000f

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0c0006

    const/16 v3, 0x64

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const v1, 0x7f0c0005

    const/16 v3, 0x64

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const v1, 0x7f0c000f

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const v1, 0x7f0c000c

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    :goto_0
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->gd:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c0006

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0c000d

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c000f

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0c0006

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const v1, 0x7f0c0005

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0006

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/mipop/appwidget/AppWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    return-void
.end method

.method private aD()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "showNavigationBar"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNavbarStateInDb() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private aE()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->S()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aF()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aD()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNavbarStatus() navbar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    const-string v2, "show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "hide"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v2, "getNavbarStatus() navbar in data base is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private aG()V
    .locals 3

    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetNavbarStatusChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->g(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aH()V
    .locals 1

    const-string v0, "widget: widgetMipopStatusChanged"

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aF()Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->ge:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->gd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->c(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v1, "setup()  context = "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->dE:[I

    return-void
.end method

.method private c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "MIPOP"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "MIPOP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aD()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v2, "show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "showNavigationBar"

    const-string v2, "show"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "hide"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "showNavigationBar"

    const-string v2, "hide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->c(Z)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onDisabled()"

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->gf:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

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

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "showNavigationBar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->gf:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->c(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widgetMipopStatusUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aH()V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widgetNavbarStatusUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->aG()V

    :cond_1
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->T()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->dE:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget v4, v2, v0

    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->dD:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
