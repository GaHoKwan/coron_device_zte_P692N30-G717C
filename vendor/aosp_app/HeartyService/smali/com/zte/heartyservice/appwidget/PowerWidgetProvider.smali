.class public Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerWidgetProvider.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "PowerWidgetProvider"

    sput-object v0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->title:Ljava/lang/String;

    return-void
.end method

.method private updatePowerMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 69
    new-instance v4, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v4, p1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 70
    .local v4, switchTools:Lcom/zte/heartyservice/power/SwitchTools;
    const-string v6, "powermanager"

    const/4 v7, 0x2

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 71
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v6, "current_mode_id"

    const/4 v7, 0x4

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, modeId:I
    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/power/SwitchTools;->getPosition(I)I

    move-result v1

    .line 73
    .local v1, position:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, res:Landroid/content/res/Resources;
    const v6, 0x7f070048

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, titles:[Ljava/lang/String;
    aget-object v6, v5, v1

    iput-object v6, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->title:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 60
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->updatePowerMode(Landroid/content/Context;)V

    .line 32
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 36
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 37
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    .line 38
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

    .line 39
    .local v1, i:I
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0300b7

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 51
    .local v5, views:Landroid/widget/RemoteViews;
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v3, intent:Landroid/content/Intent;
    const/high16 v7, 0x1400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    const v7, 0x7f0e02df

    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->title:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 54
    const v7, 0x7f0e02de

    const/high16 v8, 0x1000

    invoke-static {p1, v1, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 55
    iget-object v7, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v7, v1, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v1           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method
