.class public Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "DataTrafficWidgetProvider.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private level:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private trafficImageView:Landroid/widget/ImageView;

.field private trafficText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "DataTrafficWidgetProvider"

    sput-object v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->level:I

    return-void
.end method

.method private updateTraffic()V
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 95
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v4

    .line 96
    .local v4, mNetUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold()J

    move-result-wide v2

    .line 97
    .local v2, limit:J
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed()D

    move-result-wide v6

    .line 98
    .local v6, used:D
    const-wide/16 v0, 0x0

    .line 99
    .local v0, avail:D
    const/4 v5, 0x0

    .line 100
    .local v5, noLimit:Z
    long-to-double v8, v2

    cmpl-double v8, v8, v6

    if-ltz v8, :cond_1

    cmp-long v8, v2, v10

    if-lez v8, :cond_1

    .line 101
    long-to-double v8, v2

    sub-double v0, v8, v6

    .line 102
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v0

    long-to-double v10, v2

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->level:I

    .line 111
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 112
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f0a03ab

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->trafficText:Ljava/lang/String;

    .line 113
    iput v12, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->level:I

    .line 120
    :goto_1
    return-void

    .line 103
    :cond_1
    long-to-double v8, v2

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    cmp-long v8, v2, v10

    if-lez v8, :cond_2

    .line 104
    iput v12, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->level:I

    goto :goto_0

    .line 105
    :cond_2
    cmp-long v8, v2, v10

    if-gtz v8, :cond_0

    .line 106
    const/16 v8, 0x64

    iput v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->level:I

    .line 107
    const/4 v5, 0x1

    goto :goto_0

    .line 114
    :cond_3
    if-eqz v5, :cond_4

    .line 115
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f0a04e0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->trafficText:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_4
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f0a04e1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->trafficText:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 86
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 92
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->cm:Landroid/net/ConnectivityManager;

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    .line 43
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 45
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 17
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 49
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->updateTraffic()V

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v16

    .line 52
    .local v16, widgetIds:[I
    move-object/from16 v8, v16

    .local v8, arr$:[I
    array-length v15, v8

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v15, :cond_1

    aget v10, v8, v11

    .line 53
    .local v10, i:I
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030126

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0e03ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->trafficText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f0e03c9

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->level:I

    mul-int/lit8 v7, v7, 0x64

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 58
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.appwidget.WidgetReceiver.adjustTraffic"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v12, intent1:Landroid/content/Intent;
    const v2, 0x7f0e03c4

    const/high16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-static {v0, v10, v12, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 62
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.appwidget.WidgetReceiver.switchData"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v13, intent2:Landroid/content/Intent;
    const v2, 0x7f0e03c5

    const/high16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-static {v0, v10, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 66
    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startActivity.NET_SCANNER"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v14, intent3:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const v2, 0x7f0e03c8

    const/high16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-static {v0, v10, v14, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    .line 73
    .local v9, dataEnabled:Z
    if-eqz v9, :cond_0

    .line 74
    const v2, 0x7f0e03c6

    const v3, 0x7f020088

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 75
    const v2, 0x7f0e03c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v10, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 52
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 77
    :cond_0
    const v2, 0x7f0e03c6

    const v3, 0x7f020087

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 78
    const v2, 0x7f0e03c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/appwidget/DataTrafficWidgetProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f0a005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    .end local v1           #views:Landroid/widget/RemoteViews;
    .end local v9           #dataEnabled:Z
    .end local v10           #i:I
    .end local v12           #intent1:Landroid/content/Intent;
    .end local v13           #intent2:Landroid/content/Intent;
    .end local v14           #intent3:Landroid/content/Intent;
    :cond_1
    return-void
.end method
