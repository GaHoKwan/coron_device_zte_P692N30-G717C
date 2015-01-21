.class public Lcom/mediatek/mms/ext/MmsConversationImpl;
.super Landroid/content/ContextWrapper;
.source "MmsConversationImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsConversation;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsConversationImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsConversationHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsConversationImpl;->mHost:Lcom/mediatek/mms/ext/IMmsConversationHost;

    .line 49
    return-void
.end method


# virtual methods
.method public addOptionMenu(Landroid/view/Menu;I)V
    .locals 0
    .parameter "menu"
    .parameter "base"

    .prologue
    .line 58
    return-void
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsConversationHost;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsConversationImpl;->mHost:Lcom/mediatek/mms/ext/IMmsConversationHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsConversationHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsConversationImpl;->mHost:Lcom/mediatek/mms/ext/IMmsConversationHost;

    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
