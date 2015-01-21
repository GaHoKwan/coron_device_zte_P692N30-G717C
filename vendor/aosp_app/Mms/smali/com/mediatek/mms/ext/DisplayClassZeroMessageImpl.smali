.class public Lcom/mediatek/mms/ext/DisplayClassZeroMessageImpl;
.super Landroid/content/ContextWrapper;
.source "DisplayClassZeroMessageImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DisplayClassZeroMessageImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public isEnableClassZeroFeature()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "Mms/DisplayClassZeroMessageImpl"

    const-string v1, "isEnableClassZeroFeature(): false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public setLaunchMode(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "intent"

    .prologue
    .line 57
    const-string v0, "Mms/DisplayClassZeroMessageImpl"

    const-string v1, "DisplayClassZeroMessageImpl.setLaunchMode"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/high16 v0, 0x1800

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    return-object p1
.end method
