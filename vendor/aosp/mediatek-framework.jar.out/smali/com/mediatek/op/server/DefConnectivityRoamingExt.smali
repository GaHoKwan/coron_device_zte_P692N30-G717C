.class public Lcom/mediatek/op/server/DefConnectivityRoamingExt;
.super Ljava/lang/Object;
.source "DefConnectivityRoamingExt.java"

# interfaces
.implements Lcom/mediatek/common/server/IConnectivityRoamingExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefConnectivityRoamingExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFirstEnterRoamingArea(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    const-string v0, "DefConnectivityRoamingExt"

    const-string v1, "isFirstEnterRoamingArea"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public popupAlertDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "DefConnectivityRoamingExt"

    const-string v1, "popupAlertDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public setFirstRoamingFlag(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "roaming"

    .prologue
    .line 13
    return-void
.end method

.method public setMobileDataDisabled(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 25
    const-string v0, "DefConnectivityRoamingExt"

    const-string v1, "setMobileDataDisabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
