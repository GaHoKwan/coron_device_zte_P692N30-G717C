.class public Lcom/mediatek/op/telephony/UiccControllerExtOP09;
.super Lcom/mediatek/op/telephony/UiccControllerExt;
.source "UiccControllerExtOP09.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mediatek/op/telephony/UiccControllerExt;-><init>()V

    return-void
.end method


# virtual methods
.method public getMissingDetail(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    const v1, 0x20500f1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 28
    .local v0, strTitle:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getMissingTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 14
    .local v0, strTitle:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 15
    const v1, 0x20500ee

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 17
    :cond_0
    const v1, 0x20500ef

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
