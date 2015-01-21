.class public Lcom/mediatek/phone/ext/DefaultNotificationMgrExt;
.super Ljava/lang/Object;
.source "DefaultNotificationMgrExt.java"

# interfaces
.implements Lcom/mediatek/phone/ext/INotificationMgrExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultNotificationMgrExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowNetworkSelection(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "def"

    .prologue
    .line 16
    const-string v0, "DefaultNotificationMgrExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowNetWorkSelection, def = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-object p1
.end method
