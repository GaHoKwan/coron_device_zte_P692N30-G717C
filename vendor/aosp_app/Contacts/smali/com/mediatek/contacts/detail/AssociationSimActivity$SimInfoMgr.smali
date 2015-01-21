.class public final Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SimInfoMgr"
.end annotation


# instance fields
.field private mShowingIndex:I

.field public mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    .line 496
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    .line 497
    return-void
.end method

.method public getShowingSimId()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 549
    iget v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    if-le v1, v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v0, v0

    .line 552
    :cond_0
    return v0
.end method

.method public getShowingSimName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 545
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initSimInfo(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->clear()V

    .line 501
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    .line 502
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingIndex(I)Z
    .locals 1
    .parameter "showingIndex"

    .prologue
    .line 506
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    if-eq v0, p1, :cond_0

    .line 507
    iput p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    .line 508
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingIndexBySimId(I)Z
    .locals 6
    .parameter "simId"

    .prologue
    .line 528
    if-gez p1, :cond_0

    .line 529
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->setShowingIndex(I)Z

    move-result v2

    .line 538
    :goto_0
    return v2

    .line 531
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 533
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 534
    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    .line 535
    const/4 v2, 0x1

    goto :goto_0

    .line 531
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    .end local v1           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setShowingSlot(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    .line 514
    if-gez p1, :cond_0

    .line 515
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->setShowingIndex(I)Z

    move-result v2

    .line 524
    :goto_0
    return v2

    .line 517
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 518
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 519
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p1, :cond_1

    .line 520
    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mShowingIndex:I

    .line 521
    const/4 v2, 0x1

    goto :goto_0

    .line 517
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
    .end local v1           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
