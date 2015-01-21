.class public Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SpeedupWidgetProvider.java"


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 37
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 23
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 24
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    .line 25
    .local v6, widgetIds:[I
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 26
    .local v1, i:I
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f03007e

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 27
    .local v5, views:Landroid/widget/RemoteViews;
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v3, intent:Landroid/content/Intent;
    const/high16 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    const-string v7, "widget_id_key"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const v7, 0x7f0e019c

    const/high16 v8, 0x1000

    invoke-static {p1, v1, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 31
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v7, v1, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v1           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #views:Landroid/widget/RemoteViews;
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method
