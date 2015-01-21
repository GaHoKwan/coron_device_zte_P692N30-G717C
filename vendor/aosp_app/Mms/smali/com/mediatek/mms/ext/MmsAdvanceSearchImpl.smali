.class public Lcom/mediatek/mms/ext/MmsAdvanceSearchImpl;
.super Landroid/content/ContextWrapper;
.source "MmsAdvanceSearchImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsAdvanceSearch;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsAdvanceSearchImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public buildAdvanceSearchUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public initAdvancedData(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 59
    return-void
.end method
