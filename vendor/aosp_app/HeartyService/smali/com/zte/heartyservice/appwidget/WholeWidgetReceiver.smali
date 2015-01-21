.class public Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WholeWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static level:I

.field private static mObserver:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;

.field private static trafficlevel:I


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private memPercent:I

.field private title:Ljava/lang/String;

.field private trafficText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "WholeWidgetProvider"

    sput-object v0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->level:I

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficlevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->title:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficText:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->memPercent:I

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateTrafficSwitch()V

    return-void
.end method

.method private refreshMemWidget(Landroid/widget/RemoteViews;I)V
    .locals 4
    .parameter "views"
    .parameter "i"

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    const-string v1, "widget_id_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    iget v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->memPercent:I

    if-lez v1, :cond_0

    .line 301
    const-string v1, "widget_mem_percent"

    iget v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->memPercent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    :cond_0
    const v1, 0x7f0e019c

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1000

    invoke-static {v2, p2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 304
    return-void
.end method

.method private refreshPowerWidget(Landroid/widget/RemoteViews;I)V
    .locals 4
    .parameter "views"
    .parameter "i"

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    const v1, 0x7f0e02df

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->title:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 339
    const v1, 0x7f0e02de

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1000

    invoke-static {v2, p2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 340
    return-void
.end method

.method private refreshTrafficWidget(Landroid/widget/RemoteViews;I)V
    .locals 11
    .parameter "views"
    .parameter "i"

    .prologue
    .line 307
    const v0, 0x7f0e03ca

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 308
    const v1, 0x7f0e03c9

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    sget v0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficlevel:I

    mul-int/lit8 v6, v0, 0x64

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 310
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.zte.heartyservice.appwidget.WidgetReceiver.adjustTraffic"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v8, intent1:Landroid/content/Intent;
    const v0, 0x7f0e03c4

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, p2, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 314
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.zte.heartyservice.appwidget.WidgetReceiver.switchData"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v9, intent2:Landroid/content/Intent;
    const v0, 0x7f0e03c5

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, p2, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 318
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.zte.heartyservice.intent.action.startActivity.NET_SCANNER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v10, intent3:Landroid/content/Intent;
    const/high16 v0, 0x1400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 320
    const v0, 0x7f0e03c8

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, p2, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 324
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    .line 325
    .local v7, dataEnabled:Z
    if-eqz v7, :cond_0

    .line 326
    const v0, 0x7f0e03c6

    const v1, 0x7f020088

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 327
    const v0, 0x7f0e03c7

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    const v0, 0x7f0e03c6

    const v1, 0x7f020087

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 330
    const v0, 0x7f0e03c7

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshWholeWidget(Landroid/widget/RemoteViews;I)V
    .locals 0
    .parameter "views"
    .parameter "i"

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshMemWidget(Landroid/widget/RemoteViews;I)V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshTrafficWidget(Landroid/widget/RemoteViews;I)V

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshPowerWidget(Landroid/widget/RemoteViews;I)V

    .line 294
    return-void
.end method

.method private setMemCircleVisible(II)V
    .locals 3
    .parameter "visible"
    .parameter "id"

    .prologue
    .line 100
    if-gez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 104
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03012f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0, p2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 108
    const v1, 0x7f0e019e

    const-string v2, "setVisibility"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setTrafficSwitchEnable(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 129
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v9, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 130
    .local v5, widgetIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 131
    .local v1, i:I
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03012f

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 133
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v4, v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 135
    const v6, 0x7f0e03c5

    const-string v7, "setEnabled"

    invoke-virtual {v4, v6, v7, p1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 137
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1           #i:I
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method private updateAllData()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updatePowerMode()V

    .line 287
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateTraffic()V

    .line 288
    return-void
.end method

.method private updateMemWidgetTitle(Ljava/lang/String;I)V
    .locals 10
    .parameter "title"
    .parameter "id"

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 270
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v9, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 271
    .local v5, widgetIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 272
    .local v1, i:I
    if-ne v1, p2, :cond_0

    .line 273
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03012f

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v4, p2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 277
    const v6, 0x7f0e01a0

    invoke-virtual {v4, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 279
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 271
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private updateMenWidgetPercent(I)V
    .locals 10
    .parameter "percent"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 115
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v9, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 116
    .local v5, widgetIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 117
    .local v2, id:I
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03012f

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v4, v2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 121
    const v6, 0x7f0e019d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v2           #id:I
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method private updatePowerMode()V
    .locals 9

    .prologue
    .line 177
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-string v7, "powermanager"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 179
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v6, "current_mode_id"

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, modeId:I
    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;->getPosition(I)I

    move-result v2

    .line 181
    .local v2, position:I
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 182
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f070048

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, titles:[Ljava/lang/String;
    aget-object v6, v5, v2

    iput-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->title:Ljava/lang/String;

    .line 184
    return-void
.end method

.method private updatePowerWidget(I)V
    .locals 10
    .parameter "level"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 164
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v9, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 165
    .local v5, widgetIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 166
    .local v1, i:I
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03012f

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 168
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v4, v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 170
    const v6, 0x7f0e02df

    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->title:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 172
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v1           #i:I
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method private updateTraffic()V
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 240
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v4

    .line 241
    .local v4, mNetUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold()J

    move-result-wide v2

    .line 242
    .local v2, limit:J
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed()D

    move-result-wide v6

    .line 243
    .local v6, used:D
    const-wide/16 v0, 0x0

    .line 244
    .local v0, avail:D
    const/4 v5, 0x0

    .line 246
    .local v5, noLimit:Z
    long-to-double v8, v2

    cmpl-double v8, v8, v6

    if-ltz v8, :cond_1

    cmp-long v8, v2, v10

    if-lez v8, :cond_1

    .line 247
    long-to-double v8, v2

    sub-double v0, v8, v6

    .line 248
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v0

    long-to-double v10, v2

    div-double/2addr v8, v10

    double-to-int v8, v8

    sput v8, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficlevel:I

    .line 257
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 258
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v9, 0x7f0a03ab

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficText:Ljava/lang/String;

    .line 259
    sput v12, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficlevel:I

    .line 266
    :goto_1
    return-void

    .line 249
    :cond_1
    long-to-double v8, v2

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    cmp-long v8, v2, v10

    if-lez v8, :cond_2

    .line 250
    sput v12, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficlevel:I

    goto :goto_0

    .line 251
    :cond_2
    cmp-long v8, v2, v10

    if-gtz v8, :cond_0

    .line 252
    const/16 v8, 0x64

    sput v8, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficlevel:I

    .line 253
    const/4 v5, 0x1

    goto :goto_0

    .line 260
    :cond_3
    if-eqz v5, :cond_4

    .line 261
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v9, 0x7f0a04e0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficText:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_4
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v9, 0x7f0a04e1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->trafficText:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTrafficSwitch()V
    .locals 13

    .prologue
    const v12, 0x7f0e03c7

    const v11, 0x7f0e03c6

    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 143
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 144
    .local v1, enabled:Z
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v10, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    .line 145
    .local v6, widgetIds:[I
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 146
    .local v2, i:I
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f03012f

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 148
    .local v5, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v5, v2}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 150
    if-eqz v1, :cond_0

    .line 151
    const v7, 0x7f020088

    invoke-virtual {v5, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 152
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a005e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v7, v2, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    const v7, 0x7f020087

    invoke-virtual {v5, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 155
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a005f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    .end local v2           #i:I
    .end local v5           #views:Landroid/widget/RemoteViews;
    :cond_1
    return-void
.end method

.method private updateTrafficWidget()V
    .locals 10

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateAllData()V

    .line 226
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-class v9, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 227
    .local v5, widgetIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 228
    .local v1, i:I
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03012f

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 230
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v4, v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->refreshWholeWidget(Landroid/widget/RemoteViews;I)V

    .line 235
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v1           #i:I
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    .line 54
    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 55
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v3, :cond_1

    .line 59
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->cm:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_2

    .line 62
    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->cm:Landroid/net/ConnectivityManager;

    .line 65
    :cond_2
    sget-object v3, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mObserver:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;

    if-nez v3, :cond_3

    .line 66
    new-instance v3, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;-><init>(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;Landroid/os/Handler;)V

    sput-object v3, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mObserver:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;

    .line 67
    sget-object v3, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mObserver:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;

    invoke-virtual {v3}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;->startObserving()V

    .line 70
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.updatePowerMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    sget v3, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->level:I

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updatePowerWidget(I)V

    .line 97
    :cond_4
    :goto_0
    return-void

    .line 72
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.adjustTraffic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.updateTraffic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    :cond_6
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateTrafficWidget()V

    goto :goto_0

    .line 79
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.updateMem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 80
    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, title:Ljava/lang/String;
    const-string v3, "widget_id"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, id:I
    if-eqz v1, :cond_4

    if-ltz v0, :cond_4

    .line 83
    invoke-direct {p0, v1, v0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateMemWidgetTitle(Ljava/lang/String;I)V

    goto :goto_0

    .line 85
    .end local v0           #id:I
    .end local v1           #title:Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.switchData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 86
    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    goto :goto_0

    .line 89
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.memPercent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 90
    const-string v3, "widget_percent"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->memPercent:I

    .line 91
    iget v3, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->memPercent:I

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateMenWidgetPercent(I)V

    goto :goto_0

    .line 92
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.heartyservice.appwidget.WidgetReceiver.largeCircleVisible"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    const-string v3, "widget_circle_visible"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, visible:I
    const-string v3, "widget_circle_visible_id"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .restart local v0       #id:I
    invoke-direct {p0, v2, v0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->setMemCircleVisible(II)V

    goto/16 :goto_0
.end method
