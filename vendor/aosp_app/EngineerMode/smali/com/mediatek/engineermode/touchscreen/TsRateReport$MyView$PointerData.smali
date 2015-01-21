.class Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;
.super Ljava/lang/Object;
.source "TsRateReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerData"
.end annotation


# instance fields
.field public volatile mCnt:I

.field private volatile mDownTime:J

.field public volatile mLastX:I

.field public volatile mLastY:I

.field public volatile mMills:I

.field public volatile mPid:I

.field public volatile mRate:I

.field private volatile mUpTime:J

.field final synthetic this$1:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->this$1:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;Lcom/mediatek/engineermode/touchscreen/TsRateReport$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;-><init>(Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;)V

    return-void
.end method


# virtual methods
.method public calculateRate()V
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mUpTime:J

    iget-wide v2, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mDownTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mMills:I

    .line 137
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mMills:I

    if-nez v0, :cond_0

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mRate:I

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-wide/16 v0, 0x3e8

    iget v2, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mCnt:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mMills:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mRate:I

    goto :goto_0
.end method

.method public clean()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 145
    iput-wide v1, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mDownTime:J

    .line 146
    iput-wide v1, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mUpTime:J

    .line 147
    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mCnt:I

    .line 148
    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mPid:I

    .line 149
    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mRate:I

    .line 150
    return-void
.end method

.method public setDTimeStamp()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mDownTime:J

    .line 129
    return-void
.end method

.method public setUTimeStamp()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView$PointerData;->mUpTime:J

    .line 133
    return-void
.end method
