.class public Lcom/mediatek/mms/ext/MmsConversationListItemImpl;
.super Landroid/content/ContextWrapper;
.source "MmsConversationListItemImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsConversationListItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsConversationImpl"


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
.method public setViewSize(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public showSimType(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 0
    .parameter "context"
    .parameter "conversationUri"
    .parameter "textView"

    .prologue
    .line 51
    return-void
.end method
