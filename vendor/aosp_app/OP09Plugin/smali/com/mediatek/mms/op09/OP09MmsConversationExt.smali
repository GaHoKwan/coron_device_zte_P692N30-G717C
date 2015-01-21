.class public Lcom/mediatek/mms/op09/OP09MmsConversationExt;
.super Lcom/mediatek/mms/ext/MmsConversationImpl;
.source "OP09MmsConversationExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/Op09MmsConversationExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsConversationImpl;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public setViewSize(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
