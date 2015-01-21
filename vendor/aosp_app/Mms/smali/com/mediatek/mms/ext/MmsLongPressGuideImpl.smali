.class public Lcom/mediatek/mms/ext/MmsLongPressGuideImpl;
.super Landroid/content/ContextWrapper;
.source "MmsLongPressGuideImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsLongPressGuide;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public isShowInSetting()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public show(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "forceShow"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
