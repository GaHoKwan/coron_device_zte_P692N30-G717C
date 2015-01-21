.class public Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;
.super Landroid/content/ContextWrapper;
.source "MmsMultiDeleteImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsMultiDelete;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsMultiDeleteImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;

    .line 47
    return-void
.end method


# virtual methods
.method public deleteMassTextMsg([Ljava/lang/String;)Z
    .locals 1
    .parameter "msgIds"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;

    .line 51
    return-void
.end method

.method public lockMassTextMsgs(Landroid/content/Context;[JZ)Z
    .locals 1
    .parameter "context"
    .parameter "msgIds"
    .parameter "locked"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
