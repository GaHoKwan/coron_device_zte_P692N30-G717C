.class public Lcom/android/alarmclock/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WidgetUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeightScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F
    .locals 7
    .parameter "context"
    .parameter "options"
    .parameter "id"

    .prologue
    const/high16 v4, 0x3f80

    .line 65
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 66
    .local v3, widgetManager:Landroid/appwidget/AppWidgetManager;
    if-nez p1, :cond_0

    .line 67
    invoke-virtual {v3, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    const-string v5, "appWidgetMinHeight"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, minHeight:I
    if-nez v0, :cond_2

    .line 79
    .end local v0           #minHeight:I
    :cond_1
    :goto_0
    return v4

    .line 75
    .restart local v0       #minHeight:I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, res:Landroid/content/res/Resources;
    int-to-float v5, v0

    const v6, 0x7f09005b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v5, v6

    .line 77
    .local v1, ratio:F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    move v1, v4

    .end local v1           #ratio:F
    :cond_3
    move v4, v1

    goto :goto_0
.end method

.method public static getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F
    .locals 7
    .parameter "context"
    .parameter "options"
    .parameter "id"

    .prologue
    const/high16 v4, 0x3f80

    .line 45
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 46
    .local v3, widgetManager:Landroid/appwidget/AppWidgetManager;
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {v3, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    const-string v5, "appWidgetMinWidth"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, minWidth:I
    if-nez v0, :cond_2

    .line 59
    .end local v0           #minWidth:I
    :cond_1
    :goto_0
    return v4

    .line 55
    .restart local v0       #minWidth:I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 56
    .local v2, res:Landroid/content/res/Resources;
    int-to-float v5, v0

    const v6, 0x7f09005a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v5, v6

    .line 57
    .local v1, ratio:F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    move v1, v4

    .end local v1           #ratio:F
    :cond_3
    move v4, v1

    goto :goto_0
.end method

.method public static setClockSize(Landroid/content/Context;Landroid/widget/RemoteViews;F)V
    .locals 4
    .parameter "context"
    .parameter "clock"
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 34
    .local v0, fontSize:F
    const v1, 0x7f0e0049

    mul-float v2, v0, p2

    invoke-virtual {p1, v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 36
    const v1, 0x7f0e004a

    mul-float v2, v0, p2

    invoke-virtual {p1, v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 38
    const v1, 0x7f0e004b

    mul-float v2, v0, p2

    invoke-virtual {p1, v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 40
    return-void
.end method

.method public static showList(Landroid/content/Context;IF)Z
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "scale"

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 87
    .local v2, options:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v3

    .line 91
    :cond_1
    const-string v4, "appWidgetMinHeight"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, minHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 94
    .local v1, neededSize:I
    if-gt v0, v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method
