.class public Lcom/mediatek/op/FwkExtOP09;
.super Lcom/mediatek/op/FwkExt;
.source "FwkExtOP09.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FWKEXTOP09"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/op/FwkExt;-><init>()V

    .line 48
    const-string v0, "FWKEXTOP09"

    const-string v1, "FwkExtOP09 Contrustor !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method public getCurrentOPIndex()I
    .locals 2

    .prologue
    .line 52
    const-string v0, "FWKEXTOP09"

    const-string v1, "Enter GetCurrentOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/16 v0, 0x9

    return v0
.end method

.method public getCurrentOPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "OP09"

    return-object v0
.end method
