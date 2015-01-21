.class public final Lcom/mediatek/calendar/extension/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.java"


# static fields
.field private static sCalendarThemeExt:Lcom/mediatek/calendar/extension/CalendarThemeExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountExt(Landroid/app/Activity;)Lcom/mediatek/calendar/extension/IAccountExt;
    .locals 1
    .parameter "activity"

    .prologue
    .line 61
    new-instance v0, Lcom/mediatek/calendar/extension/PCSyncExtension;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/extension/PCSyncExtension;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getAllInOneOptionMenuExt(Landroid/content/Context;)Lcom/mediatek/calendar/extension/IOptionsMenuExt;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    new-instance v0, Lcom/mediatek/calendar/extension/ClearAllEventsExt;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/extension/ClearAllEventsExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static declared-synchronized getCalendarTheme(Landroid/content/Context;)Lcom/mediatek/calendar/extension/ICalendarThemeExt;
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    const-class v1, Lcom/mediatek/calendar/extension/ExtensionFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/calendar/extension/ExtensionFactory;->sCalendarThemeExt:Lcom/mediatek/calendar/extension/CalendarThemeExt;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/calendar/extension/CalendarThemeExt;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/calendar/extension/CalendarThemeExt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/calendar/extension/ExtensionFactory;->sCalendarThemeExt:Lcom/mediatek/calendar/extension/CalendarThemeExt;

    .line 83
    :cond_0
    sget-object v0, Lcom/mediatek/calendar/extension/ExtensionFactory;->sCalendarThemeExt:Lcom/mediatek/calendar/extension/CalendarThemeExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getEditEventViewExt(Landroid/app/Activity;Lcom/mediatek/calendar/extension/IEditEventView;)Lcom/mediatek/calendar/extension/IEditEventViewExt;
    .locals 1
    .parameter "activity"
    .parameter "editEventView"

    .prologue
    .line 71
    new-instance v0, Lcom/mediatek/calendar/extension/EditEventViewExt;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/calendar/extension/EditEventViewExt;-><init>(Landroid/app/Activity;Lcom/mediatek/calendar/extension/IEditEventView;)V

    return-object v0
.end method

.method public static getEditTextExt()Lcom/mediatek/calendar/edittext/IEditTextExt;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/mediatek/calendar/edittext/EditTextExtImpl;

    invoke-direct {v0}, Lcom/mediatek/calendar/edittext/EditTextExtImpl;-><init>()V

    .line 92
    .local v0, extension:Lcom/mediatek/calendar/edittext/IEditTextExt;
    return-object v0
.end method

.method public static getEventInfoOptionsMenuExt(Landroid/content/Context;J)Lcom/mediatek/calendar/extension/IOptionsMenuExt;
    .locals 1
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/mediatek/calendar/MTKUtils;->isEventShareAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;-><init>(Landroid/content/Context;J)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/calendar/extension/DefaultOptionsMenuExt;

    invoke-direct {v0}, Lcom/mediatek/calendar/extension/DefaultOptionsMenuExt;-><init>()V

    goto :goto_0
.end method

.method public static getMonthViewPlugin(Landroid/content/Context;Lcom/mediatek/calendar/extension/IMonthViewForExt;)Lcom/mediatek/calendar/extension/IMonthViewExt;
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 29
    new-instance v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/calendar/extension/LunarMonthViewExt;-><init>(Landroid/content/Context;Lcom/mediatek/calendar/extension/IMonthViewForExt;)V

    return-object v0
.end method
