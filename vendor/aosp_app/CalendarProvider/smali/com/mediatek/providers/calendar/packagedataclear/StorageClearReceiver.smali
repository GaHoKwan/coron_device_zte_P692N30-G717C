.class public Lcom/mediatek/providers/calendar/packagedataclear/StorageClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageClearReceiver.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "StorageClearReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private broadStorageCleared(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    const-string v1, "StorageClearReceiver"

    const-string v2, "CalendarProvider package data was cleared..."

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    const-string v1, "packageName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-direct {p0, p1}, Lcom/mediatek/providers/calendar/packagedataclear/StorageClearReceiver;->broadStorageCleared(Landroid/content/Context;)V

    .line 20
    :cond_0
    return-void
.end method
