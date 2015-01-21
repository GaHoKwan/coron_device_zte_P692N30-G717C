.class public Lcom/mediatek/op/bootanim/BootAnimExtOP09;
.super Lcom/mediatek/op/bootanim/DefaultBootAnimExt;
.source "BootAnimExtOP09.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootAnimExt"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mediatek/op/bootanim/DefaultBootAnimExt;-><init>()V

    .line 14
    const-string v0, "BootAnimExt"

    const-string v1, "BootAnimExtOP09 Contrustor !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public getScreenTurnOffTime()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xbb8

    return v0
.end method

.method public isCustBootAnim()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
