.class public Lcom/mediatek/mms/ext/MmsPlayerImpl;
.super Landroid/content/ContextWrapper;
.source "MmsPlayerImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsPlayerHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsPlayerImpl;->mHost:Lcom/mediatek/mms/ext/IMmsPlayerHost;

    .line 52
    return-void
.end method


# virtual methods
.method public addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"
    .parameter "text"

    .prologue
    .line 61
    return-void
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsPlayerHost;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsPlayerImpl;->mHost:Lcom/mediatek/mms/ext/IMmsPlayerHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsPlayerHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsPlayerImpl;->mHost:Lcom/mediatek/mms/ext/IMmsPlayerHost;

    .line 56
    return-void
.end method
