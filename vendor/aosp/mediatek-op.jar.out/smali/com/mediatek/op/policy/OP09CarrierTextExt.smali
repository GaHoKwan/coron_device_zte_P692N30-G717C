.class public Lcom/mediatek/op/policy/OP09CarrierTextExt;
.super Lcom/mediatek/op/policy/DefaultCarrierTextExt;
.source "OP09CarrierTextExt.java"


# static fields
.field private static final CT:Ljava/lang/String; = "china telecom"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mediatek/op/policy/DefaultCarrierTextExt;-><init>()V

    return-void
.end method


# virtual methods
.method public changedPlmnToCapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "plmn"

    .prologue
    .line 11
    const-string v0, "china telecom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public hideCarrier(Z)Z
    .locals 1
    .parameter "isMissing"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
