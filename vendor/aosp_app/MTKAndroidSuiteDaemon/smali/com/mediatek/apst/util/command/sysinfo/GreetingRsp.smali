.class public Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "GreetingRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private versionCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;->versionCode:I

    return v0
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;->versionCode:I

    .line 89
    return-void
.end method
