.class public Lcom/mediatek/calendarimporter/CalendarImporterApplication;
.super Landroid/app/Application;
.source "CalendarImporterApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CalendarImporterApplication"

.field private static sInjectedServices:Lcom/mediatek/calendarimporter/utils/InjectedServices;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static injectServices(Lcom/mediatek/calendarimporter/utils/InjectedServices;)V
    .locals 0
    .parameter "services"

    .prologue
    .line 55
    sput-object p0, Lcom/mediatek/calendarimporter/CalendarImporterApplication;->sInjectedServices:Lcom/mediatek/calendarimporter/utils/InjectedServices;

    .line 56
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 70
    sget-object v1, Lcom/mediatek/calendarimporter/CalendarImporterApplication;->sInjectedServices:Lcom/mediatek/calendarimporter/utils/InjectedServices;

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/mediatek/calendarimporter/CalendarImporterApplication;->sInjectedServices:Lcom/mediatek/calendarimporter/utils/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/mediatek/calendarimporter/utils/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 76
    .end local v0           #service:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    return-void
.end method
