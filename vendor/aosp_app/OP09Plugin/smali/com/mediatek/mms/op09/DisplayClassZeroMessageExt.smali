.class public Lcom/mediatek/mms/op09/DisplayClassZeroMessageExt;
.super Lcom/mediatek/mms/ext/DisplayClassZeroMessageImpl;
.source "DisplayClassZeroMessageExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DisplayClassZeroMessageExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/DisplayClassZeroMessageImpl;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public isEnableClassZeroFeature()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "Mms/DisplayClassZeroMessageExt"

    const-string v1, "isEnableClassZeroFeature(): true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public setLaunchMode(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "intent"

    .prologue
    .line 57
    const-string v0, "Mms/DisplayClassZeroMessageExt"

    const-string v1, "DisplayClassZeroMessageExt.setLaunchMode"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/high16 v0, 0x3800

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    return-object p1
.end method
