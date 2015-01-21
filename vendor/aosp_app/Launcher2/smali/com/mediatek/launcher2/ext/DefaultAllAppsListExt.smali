.class public Lcom/mediatek/launcher2/ext/DefaultAllAppsListExt;
.super Ljava/lang/Object;
.source "DefaultAllAppsListExt.java"

# interfaces
.implements Lcom/mediatek/launcher2/ext/IAllAppsListExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAllAppsListExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public isShowWifiSettings()Z
    .locals 2

    .prologue
    .line 51
    const-string v0, "DefaultAllAppsListExt"

    const-string v1, "default isShowWifiSettings called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    return v0
.end method
