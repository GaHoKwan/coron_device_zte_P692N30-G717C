.class public Lcom/mediatek/phone/plugin/OP09NotificationMgrExt;
.super Lcom/mediatek/phone/ext/DefaultNotificationMgrExt;
.source "OP09NotificationMgrExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09NotificationMgrExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultNotificationMgrExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowNetworkSelection(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "def"

    .prologue
    .line 21
    const-string v0, "OP09NotificationMgrExt"

    const-string v1, "onShowNetWorkSelection return null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
