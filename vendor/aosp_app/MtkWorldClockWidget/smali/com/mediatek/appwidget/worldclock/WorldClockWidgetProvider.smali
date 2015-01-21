.class public Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WorldClockWidgetProvider.java"


# static fields
.field private static final ANOTHER_BUTTON:I = 0x1

.field private static final DATA_CLEARED:Ljava/lang/String; = "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

.field private static final DELETE_INTENT:Ljava/lang/String; = "android.intent.action.mtk.worldclock.deleteIntent"

.field private static final ON_CLICK_APPWIDGETID:Ljava/lang/String; = "onClickAppWidgetId"

.field private static final TAG:Ljava/lang/String; = "WorldClockWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "buttonId"

    .prologue
    const/4 v6, 0x0

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "WorldClockWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPendingIntent appWidgetId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "onClickAppWidgetId"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 145
    .local v2, pi:Landroid/app/PendingIntent;
    return-object v2
.end method

.method public static updateCity(Landroid/content/Context;ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V
    .locals 11
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "cityInfo"

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f090009

    const/4 v8, 0x0

    const v7, 0x7f090008

    const v6, 0x7f09000a

    .line 150
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 152
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030003

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 154
    .local v3, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, cityName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 156
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, names:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    aget-object v4, v2, v10

    const-string v5, "D.C."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    .end local v2           #names:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x9

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_1
    const v4, 0x7f09000c

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 171
    :goto_1
    invoke-static {p0, p1, v10}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 175
    invoke-virtual {v3, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 176
    const/4 v4, 0x4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 177
    invoke-virtual {p2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 178
    invoke-virtual {v3, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    const/4 v4, 0x4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    :goto_2
    const-string v4, "setDateHeight"

    const v5, 0x7f060001

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 188
    const-string v4, "setDateFormatString"

    const/high16 v5, 0x7f07

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 190
    const-string v4, "setDateFontSize"

    const/high16 v5, 0x7f06

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 193
    const-string v4, "setDateHeight"

    const v5, 0x7f060001

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 195
    const-string v4, "setDateFormatString"

    const/high16 v5, 0x7f07

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 197
    const-string v4, "setDateFontSize"

    const/high16 v5, 0x7f06

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 200
    const-string v4, "setDayDialResource"

    const v5, 0x7f020006

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 202
    const-string v4, "setDayHourResource"

    const v5, 0x7f020008

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 204
    const-string v4, "setDayMinuteResource"

    const v5, 0x7f020009

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 206
    const-string v4, "setNightDialResource"

    const v5, 0x7f02000a

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 208
    const-string v4, "setNightHourResource"

    const v5, 0x7f02000c

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 210
    const-string v4, "setNightMinuteResource"

    const v5, 0x7f02000d

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 212
    const-string v4, "setDayHatResource"

    const v5, 0x7f020007

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 214
    const-string v4, "setNightHatResource"

    const v5, 0x7f02000b

    invoke-virtual {v3, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 217
    const-string v4, "setDayDialResource"

    const v5, 0x7f020006

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 219
    const-string v4, "setDayHourResource"

    const v5, 0x7f020008

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 221
    const-string v4, "setDayMinuteResource"

    const v5, 0x7f020009

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 223
    const-string v4, "setNightDialResource"

    const v5, 0x7f02000a

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 225
    const-string v4, "setNightHourResource"

    const v5, 0x7f02000c

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 227
    const-string v4, "setNightMinuteResource"

    const v5, 0x7f02000d

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 229
    const-string v4, "setDayHatResource"

    const v5, 0x7f020007

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 231
    const-string v4, "setNightHatResource"

    const v5, 0x7f02000b

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 234
    const-string v4, "setTimeZone"

    invoke-virtual {p2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 237
    return-void

    .line 161
    .restart local v2       #names:[Ljava/lang/String;
    :cond_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 169
    .end local v2           #names:[Ljava/lang/String;
    :cond_3
    const v4, 0x7f09000c

    const v5, 0x7f070003

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 181
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    invoke-virtual {v3, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    invoke-static {p0, p1, v10}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 241
    invoke-static {p2}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->deletePreferences([I)V

    .line 242
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    const-string v7, "android.intent.action.mtk.worldclock.deleteIntent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    const-string v7, "weatherNameDelete"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, weatherNameDelete:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 69
    invoke-static {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->initPreference(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 71
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v6}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getIntDelete(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 72
    .local v4, mAppwidgetIdFromDeletedArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v3, v7, [I

    .line 75
    .local v3, mAppwidgetIdFromDeleted:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 76
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v3}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->deletePreferences([I)V

    .line 79
    const-string v7, "WorldClockWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WorldClockWidgetProvider delete city weatherNameDelete = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, p1, v0, v3}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 95
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v2           #i:I
    .end local v3           #mAppwidgetIdFromDeleted:[I
    .end local v4           #mAppwidgetIdFromDeletedArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #weatherNameDelete:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    return-void

    .line 83
    :cond_2
    const-string v7, "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, packageName:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "com.mediatek.appwidget.worldclock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    const-string v7, "WorldClockWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA_CLEARED, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 90
    .restart local v0       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 92
    .local v1, appwidgetIds:[I
    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 101
    invoke-static {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->initPreference(Landroid/content/Context;)V

    .line 102
    array-length v6, p3

    .line 103
    .local v6, N:I
    const-string v0, "WorldClockWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate N = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 106
    aget v5, p3, v8

    .line 107
    .local v5, appWidgetId:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getCityCPref(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v7

    .line 108
    .local v7, cityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-virtual {v7}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getWeatherID()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, weatherID:Ljava/lang/String;
    const-string v0, "WorldClockWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cityInfo = cityName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1, v5, v7}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->updateCity(Landroid/content/Context;ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V

    .line 111
    invoke-virtual {v7}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    move-object v4, v7

    .line 113
    .local v4, newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    new-instance v0, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider$1;-><init>(Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    .end local v4           #newCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 131
    .end local v3           #weatherID:Ljava/lang/String;
    .end local v5           #appWidgetId:I
    .end local v7           #cityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    :cond_1
    return-void
.end method
