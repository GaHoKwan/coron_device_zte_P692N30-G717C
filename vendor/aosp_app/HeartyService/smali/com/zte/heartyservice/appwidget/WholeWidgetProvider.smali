.class public Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WholeWidgetProvider.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private powerLevel:I

.field private powerTitle:Ljava/lang/String;

.field private trafficLevel:I

.field private trafficText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "WholeWidgetProvider"

    sput-object v0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficText:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficLevel:I

    .line 33
    iput-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->powerTitle:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->powerLevel:I

    return-void
.end method

.method private updateArgs()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->updateTraffic()V

    .line 73
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->updatePowerMode()V

    .line 74
    return-void
.end method

.method private updateMemWidget(Landroid/widget/RemoteViews;I)V
    .locals 4
    .parameter "views"
    .parameter "i"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    const-string v1, "widget_id_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const v1, 0x7f0e019c

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1000

    invoke-static {v2, p2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 90
    return-void
.end method

.method private updatePowerMode()V
    .locals 9

    .prologue
    .line 156
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const-string v7, "powermanager"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 158
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v6, "current_mode_id"

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, modeId:I
    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;->getPosition(I)I

    move-result v2

    .line 160
    .local v2, position:I
    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 161
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f070048

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, titles:[Ljava/lang/String;
    aget-object v6, v5, v2

    iput-object v6, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->powerTitle:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private updatePowerWidget(Landroid/widget/RemoteViews;I)V
    .locals 4
    .parameter "views"
    .parameter "id"

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x7f0e02df

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->powerTitle:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    const v1, 0x7f0e02de

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1000

    invoke-static {v2, p2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    return-void
.end method

.method private updateTraffic()V
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 120
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v4

    .line 121
    .local v4, mNetUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold()J

    move-result-wide v2

    .line 122
    .local v2, limit:J
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed()D

    move-result-wide v6

    .line 123
    .local v6, used:D
    const-wide/16 v0, 0x0

    .line 124
    .local v0, avail:D
    const/4 v5, 0x0

    .line 126
    .local v5, noLimit:Z
    long-to-double v8, v2

    cmpl-double v8, v8, v6

    if-ltz v8, :cond_1

    cmp-long v8, v2, v10

    if-lez v8, :cond_1

    .line 127
    long-to-double v8, v2

    sub-double v0, v8, v6

    .line 128
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v0

    long-to-double v10, v2

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficLevel:I

    .line 137
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 138
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f0a03ab

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficText:Ljava/lang/String;

    .line 139
    iput v12, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficLevel:I

    .line 146
    :goto_1
    return-void

    .line 129
    :cond_1
    long-to-double v8, v2

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    cmp-long v8, v2, v10

    if-lez v8, :cond_2

    .line 130
    iput v12, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficLevel:I

    goto :goto_0

    .line 131
    :cond_2
    cmp-long v8, v2, v10

    if-gtz v8, :cond_0

    .line 132
    const/16 v8, 0x64

    iput v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficLevel:I

    .line 133
    const/4 v5, 0x1

    goto :goto_0

    .line 140
    :cond_3
    if-eqz v5, :cond_4

    .line 141
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f0a04e0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficText:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_4
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f0a04e1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficText:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTrafficWidget(Landroid/widget/RemoteViews;I)V
    .locals 11
    .parameter "views"
    .parameter "id"

    .prologue
    .line 93
    const v0, 0x7f0e03ca

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    const v1, 0x7f0e03c9

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->trafficLevel:I

    mul-int/lit8 v6, v0, 0x64

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 96
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.zte.heartyservice.appwidget.WidgetReceiver.adjustTraffic"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v8, intent1:Landroid/content/Intent;
    const v0, 0x7f0e03c4

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, p2, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 99
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.zte.heartyservice.appwidget.WidgetReceiver.switchData"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v9, intent2:Landroid/content/Intent;
    const v0, 0x7f0e03c5

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, p2, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.zte.heartyservice.intent.action.startActivity.NET_SCANNER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v10, intent3:Landroid/content/Intent;
    const/high16 v0, 0x1400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const v0, 0x7f0e03c8

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, p2, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    .line 109
    .local v7, dataEnabled:Z
    const-string v0, "WholeWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug updateTrafficWidget dataEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v7, :cond_0

    .line 111
    const v0, 0x7f0e03c6

    const v1, 0x7f020088

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    const v0, 0x7f0e03c7

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const v0, 0x7f0e03c6

    const v1, 0x7f020087

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 115
    const v0, 0x7f0e03c7

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 77
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 83
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 80
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_1

    .line 47
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->cm:Landroid/net/ConnectivityManager;

    .line 53
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->updateArgs()V

    .line 58
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 59
    .local v1, i:I
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03012f

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 61
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v4, v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->updateMemWidget(Landroid/widget/RemoteViews;I)V

    .line 62
    invoke-direct {p0, v4, v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->updateTrafficWidget(Landroid/widget/RemoteViews;I)V

    .line 63
    invoke-direct {p0, v4, v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->updatePowerWidget(Landroid/widget/RemoteViews;I)V

    .line 65
    iget-object v5, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1           #i:I
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method
