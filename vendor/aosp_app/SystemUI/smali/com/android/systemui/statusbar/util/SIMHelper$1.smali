.class final Lcom/android/systemui/statusbar/util/SIMHelper$1;
.super Ljava/lang/Object;
.source "SIMHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/util/SIMHelper;->getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 126
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ge v0, v1, :cond_0

    .line 127
    const/4 v0, -0x1

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-le v0, v1, :cond_1

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    check-cast p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .end local p1
    check-cast p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/util/SIMHelper$1;->compare(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v0

    return v0
.end method
