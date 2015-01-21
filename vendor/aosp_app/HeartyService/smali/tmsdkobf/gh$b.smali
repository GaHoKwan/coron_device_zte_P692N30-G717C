.class public final Ltmsdkobf/gh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public jO:I

.field public kb:I

.field public kg:I

.field public kh:I

.field public ki:I

.field public kj:I

.field public ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltmsdkobf/gh;IIIIIILjava/util/List;)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"
    .parameter "rssi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, neighboringCellList:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput v1, p0, Ltmsdkobf/gh$b;->jO:I

    .line 242
    iput v1, p0, Ltmsdkobf/gh$b;->kb:I

    iput v1, p0, Ltmsdkobf/gh$b;->kg:I

    iput v1, p0, Ltmsdkobf/gh$b;->kh:I

    iput v1, p0, Ltmsdkobf/gh$b;->ki:I

    iput v1, p0, Ltmsdkobf/gh$b;->kj:I

    .line 244
    iput-object v2, p0, Ltmsdkobf/gh$b;->ne:Ljava/util/List;

    .line 260
    iput p2, p0, Ltmsdkobf/gh$b;->jO:I

    .line 261
    iput p3, p0, Ltmsdkobf/gh$b;->kb:I

    .line 262
    iput p4, p0, Ltmsdkobf/gh$b;->kg:I

    .line 263
    iput p5, p0, Ltmsdkobf/gh$b;->kh:I

    .line 264
    iput p6, p0, Ltmsdkobf/gh$b;->ki:I

    .line 265
    iput p7, p0, Ltmsdkobf/gh$b;->kj:I

    .line 266
    if-eqz p8, :cond_1

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltmsdkobf/gh$b;->ne:Ljava/util/List;

    .line 268
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    :goto_1
    return-void

    .line 268
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 269
    .local v0, neighbor:Landroid/telephony/NeighboringCellInfo;
    iget-object v2, p0, Ltmsdkobf/gh$b;->ne:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v0           #neighbor:Landroid/telephony/NeighboringCellInfo;
    :cond_1
    iput-object v2, p0, Ltmsdkobf/gh$b;->ne:Ljava/util/List;

    goto :goto_1
.end method
