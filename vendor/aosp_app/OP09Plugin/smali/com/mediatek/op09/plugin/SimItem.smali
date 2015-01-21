.class Lcom/mediatek/op09/plugin/SimItem;
.super Ljava/lang/Object;
.source "SimInformation.java"


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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/mediatek/op09/plugin/SimItem;->mIsSim:Z

    .line 28
    iput-object v3, p0, Lcom/mediatek/op09/plugin/SimItem;->mName:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mColor:I

    .line 30
    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mSlot:I

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mSimId:J

    .line 32
    iput-object v3, p0, Lcom/mediatek/op09/plugin/SimItem;->mNumber:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mDispalyNumberFormat:I

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mState:I

    .line 55
    iput-boolean v2, p0, Lcom/mediatek/op09/plugin/SimItem;->mIsSim:Z

    .line 56
    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mName:Ljava/lang/String;

    .line 57
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mColor:I

    .line 58
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mSlot:I

    .line 59
    iget-wide v0, p1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mSimId:J

    .line 60
    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mNumber:Ljava/lang/String;

    .line 61
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mDispalyNumberFormat:I

    .line 62
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mIsSim:Z

    .line 28
    iput-object v3, p0, Lcom/mediatek/op09/plugin/SimItem;->mName:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/mediatek/op09/plugin/SimItem;->mColor:I

    .line 30
    iput v1, p0, Lcom/mediatek/op09/plugin/SimItem;->mSlot:I

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mSimId:J

    .line 32
    iput-object v3, p0, Lcom/mediatek/op09/plugin/SimItem;->mNumber:Ljava/lang/String;

    .line 33
    iput v2, p0, Lcom/mediatek/op09/plugin/SimItem;->mDispalyNumberFormat:I

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/op09/plugin/SimItem;->mState:I

    .line 44
    iput-object p1, p0, Lcom/mediatek/op09/plugin/SimItem;->mName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/mediatek/op09/plugin/SimItem;->mColor:I

    .line 46
    iput-boolean v2, p0, Lcom/mediatek/op09/plugin/SimItem;->mIsSim:Z

    .line 47
    iput-wide p3, p0, Lcom/mediatek/op09/plugin/SimItem;->mSimId:J

    .line 48
    return-void
.end method
