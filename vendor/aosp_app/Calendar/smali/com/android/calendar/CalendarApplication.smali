.class public Lcom/android/calendar/CalendarApplication;
.super Landroid/app/Application;
.source "CalendarApplication.java"


# static fields
.field private static sInjectedServices:Lcom/mediatek/calendar/InjectedServices;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static injectServices(Lcom/mediatek/calendar/InjectedServices;)V
    .locals 0
    .parameter "services"

    .prologue
    .line 50
    sput-object p0, Lcom/android/calendar/CalendarApplication;->sInjectedServices:Lcom/mediatek/calendar/InjectedServices;

    .line 51
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 65
    sget-object v1, Lcom/android/calendar/CalendarApplication;->sInjectedServices:Lcom/mediatek/calendar/InjectedServices;

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/android/calendar/CalendarApplication;->sInjectedServices:Lcom/mediatek/calendar/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/mediatek/calendar/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 71
    .end local v0           #service:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->setDefaultValues(Landroid/content/Context;)V

    .line 39
    const-string v0, "preferences_version"

    invoke-static {p0}, Lcom/android/calendar/Utils;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
