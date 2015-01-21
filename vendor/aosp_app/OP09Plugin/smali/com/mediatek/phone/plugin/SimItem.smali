.class Lcom/mediatek/phone/plugin/SimItem;
.super Ljava/lang/Object;
.source "DataConnectionExt.java"


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimId:J

.field public mSlot:I

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/provider/Telephony$SIMInfo;)V
    .locals 4
    .parameter "siminfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/mediatek/phone/plugin/SimItem;->mIsSim:Z

    .line 68
    iput-object v3, p0, Lcom/mediatek/phone/plugin/SimItem;->mName:Ljava/lang/String;

    .line 69
    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mColor:I

    .line 70
    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mSlot:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mSimId:J

    .line 72
    iput-object v3, p0, Lcom/mediatek/phone/plugin/SimItem;->mNumber:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mDispalyNumberFormat:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mState:I

    .line 100
    iput-boolean v2, p0, Lcom/mediatek/phone/plugin/SimItem;->mIsSim:Z

    .line 101
    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mName:Ljava/lang/String;

    .line 102
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mColor:I

    .line 103
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mSlot:I

    .line 104
    iget-wide v0, p1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mSimId:J

    .line 105
    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mNumber:Ljava/lang/String;

    .line 106
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mDispalyNumberFormat:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 4
    .parameter "name"
    .parameter "color"
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mIsSim:Z

    .line 68
    iput-object v3, p0, Lcom/mediatek/phone/plugin/SimItem;->mName:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/mediatek/phone/plugin/SimItem;->mColor:I

    .line 70
    iput v1, p0, Lcom/mediatek/phone/plugin/SimItem;->mSlot:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mSimId:J

    .line 72
    iput-object v3, p0, Lcom/mediatek/phone/plugin/SimItem;->mNumber:Ljava/lang/String;

    .line 73
    iput v2, p0, Lcom/mediatek/phone/plugin/SimItem;->mDispalyNumberFormat:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/phone/plugin/SimItem;->mState:I

    .line 87
    iput-object p1, p0, Lcom/mediatek/phone/plugin/SimItem;->mName:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/mediatek/phone/plugin/SimItem;->mColor:I

    .line 89
    iput-boolean v2, p0, Lcom/mediatek/phone/plugin/SimItem;->mIsSim:Z

    .line 90
    iput-wide p3, p0, Lcom/mediatek/phone/plugin/SimItem;->mSimId:J

    .line 92
    return-void
.end method
