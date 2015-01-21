.class public Lcom/mediatek/engineermode/cpustress/ApMcu;
.super Lcom/mediatek/engineermode/cpustress/CpuStressCommon;
.source "ApMcu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final INDEX_CA9:I = 0x1

.field public static final INDEX_DHRY:I = 0x2

.field public static final INDEX_FDCT:I = 0x4

.field public static final INDEX_IMDCT:I = 0x5

.field public static final INDEX_MEMCPY:I = 0x3

.field public static final INDEX_NEON:I = 0x0

.field public static final MASK_CA9_0:I = 0x8

.field public static final MASK_DHRY_0:I = 0x10

.field public static final MASK_FDCT_0:I = 0x20

.field public static final MASK_IMDCT_0:I = 0x28

.field public static final MASK_MEMCPY_0:I = 0x18

.field public static final MASK_NEON_0:I = 0x0

.field private static final MAXPOWER_TYPE_7:Ljava/lang/String; = "CA7"

.field private static final MAXPOWER_TYPE_9:Ljava/lang/String; = "CA9"

.field private static final PERCENT:D = 100.0

.field private static final TAG:Ljava/lang/String; = "EM/CpuStress_ApMcu"

.field private static final TEST_ITEM:I = 0x6


# instance fields
.field private mBtnStart:Landroid/widget/Button;

.field private mCbArray:[Landroid/widget/CheckBox;

.field private mEtLoopCount:Landroid/widget/EditText;

.field private mTvArray:[Landroid/widget/TextView;

.field private mTvResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    .line 80
    const/16 v0, 0x30

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    .line 82
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvResult:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cpustress/ApMcu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/ApMcu;->updateTestResult()V

    return-void
.end method

.method private showTestResult(IJ)V
    .locals 9
    .parameter "indexMode"
    .parameter "result"

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, index:I
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v1, :cond_5

    .line 268
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 269
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v0

    aget-object v4, v3, v4

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    mul-int/lit8 v7, v2, 0x8

    add-int/2addr v7, v0

    shl-int/2addr v3, v7

    int-to-long v7, v3

    and-long/2addr v7, p2

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    const v3, 0x7f080123

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 238
    .end local v0           #i:I
    .end local v2           #j:I
    :pswitch_0
    const/4 v1, 0x0

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    const/4 v1, 0x1

    .line 242
    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v1, 0x2

    .line 245
    goto :goto_0

    .line 247
    :pswitch_3
    const/4 v1, 0x3

    .line 248
    goto :goto_0

    .line 250
    :pswitch_4
    const/4 v1, 0x7

    .line 251
    goto :goto_0

    .line 253
    :pswitch_5
    const/16 v3, 0x8

    sget v4, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-ne v3, v4, :cond_0

    .line 254
    const/4 v1, 0x7

    goto :goto_0

    .line 255
    :cond_0
    const/4 v3, 0x4

    sget v4, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-ne v3, v4, :cond_1

    .line 256
    const/4 v1, 0x3

    goto :goto_0

    .line 257
    :cond_1
    const/4 v3, 0x2

    sget v4, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-ne v3, v4, :cond_2

    .line 258
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    const/4 v1, 0x0

    .line 262
    goto :goto_0

    .line 269
    .restart local v0       #i:I
    .restart local v2       #j:I
    :cond_3
    const v3, 0x7f080122

    goto :goto_3

    .line 267
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v2           #j:I
    :cond_5
    return-void

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateCbStatus(I)V
    .locals 5
    .parameter "mask"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v4, v1, v0

    shl-int v1, v2, v0

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 280
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 279
    goto :goto_1

    .line 282
    :cond_1
    return-void
.end method

.method private updateStartUi()V
    .locals 4

    .prologue
    const v3, 0x7f080121

    .line 409
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 410
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    const v2, 0x7f08013a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvResult:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 415
    return-void
.end method

.method private updateTestCount(IIIIIIIIIIII)V
    .locals 9
    .parameter "neonTest"
    .parameter "neonTestPass"
    .parameter "maxPowerTest"
    .parameter "maxPowerTestPass"
    .parameter "dhryTest"
    .parameter "dhryTestPass"
    .parameter "memcpyTest"
    .parameter "memcpyTestPass"
    .parameter "fdctTest"
    .parameter "fdctTestPass"
    .parameter "imdctTest"
    .parameter "imdctTestPass"

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 318
    const/4 v2, 0x4

    sget v3, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-gt v2, v3, :cond_6

    .line 319
    const v2, 0x7f08013e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    int-to-double v5, p2

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    int-to-double v7, p1

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 331
    :cond_0
    if-eqz p3, :cond_1

    .line 332
    const v2, 0x7f08013f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    int-to-double v5, p4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    int-to-double v7, p3

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    :cond_1
    if-eqz p5, :cond_2

    .line 339
    const v2, 0x7f080140

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    int-to-double v5, p6

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    int-to-double v7, p5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    :cond_2
    if-eqz p7, :cond_3

    .line 345
    const v2, 0x7f080141

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move/from16 v0, p8

    int-to-double v5, v0

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    move/from16 v0, p7

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    :cond_3
    if-eqz p9, :cond_4

    .line 352
    const v2, 0x7f080142

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move/from16 v0, p10

    int-to-double v5, v0

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    move/from16 v0, p9

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :cond_4
    if-eqz p11, :cond_5

    .line 358
    const v2, 0x7f080143

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move/from16 v0, p12

    int-to-double v5, v0

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    move/from16 v0, p11

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    :cond_5
    const-string v2, "EM/CpuStress_ApMcu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvResult:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void

    .line 324
    :cond_6
    const v2, 0x7f08013d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    int-to-double v5, p2

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    int-to-double v7, p1

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private updateTestResult()V
    .locals 29

    .prologue
    .line 153
    const-string v1, "EM/CpuStress_ApMcu"

    const-string v2, "Enter updateTestResult"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->getData()Landroid/os/Bundle;

    move-result-object v27

    .line 156
    .local v27, data:Landroid/os/Bundle;
    if-eqz v27, :cond_0

    .line 158
    const-string v1, "result_neon"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 159
    .local v8, timesNeon:I
    const-string v1, "result_ca9"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 160
    .local v9, timesCa9:I
    const-string v1, "result_dhry"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 161
    .local v10, timesDhry:I
    const-string v1, "result_memcpy"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 162
    .local v11, timesMemcpy:I
    const-string v1, "result_fdct"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 163
    .local v12, timesFdct:I
    const-string v1, "result_imdct"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 164
    .local v13, timesImdct:I
    const-string v1, "run"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v1, "loopcount"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "mask"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "result"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/mediatek/engineermode/cpustress/ApMcu;->updateTestUi(ZJIJIIIIII)V

    .line 169
    const-string v1, "result_pass_neon"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v1, "result_pass_ca9"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v1, "result_pass_dhry"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v1, "result_pass_memcpy"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v1, "result_pass_fdct"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    const-string v1, "result_pass_imdct"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v14, p0

    move v15, v8

    move/from16 v17, v9

    move/from16 v19, v10

    move/from16 v21, v11

    move/from16 v23, v12

    move/from16 v25, v13

    invoke-direct/range {v14 .. v26}, Lcom/mediatek/engineermode/cpustress/ApMcu;->updateTestCount(IIIIIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v8           #timesNeon:I
    .end local v9           #timesCa9:I
    .end local v10           #timesDhry:I
    .end local v11           #timesMemcpy:I
    .end local v12           #timesFdct:I
    .end local v13           #timesImdct:I
    .end local v27           #data:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v28

    .line 177
    .local v28, e:Ljava/lang/NullPointerException;
    const-string v1, "EM/CpuStress_ApMcu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTestUI NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTestUi(ZJIJIIIIII)V
    .locals 5
    .parameter "bRun"
    .parameter "iCount"
    .parameter "mask"
    .parameter "result"
    .parameter "timesN"
    .parameter "timesC"
    .parameter "timesD"
    .parameter "timesM"
    .parameter "timesF"
    .parameter "timesI"

    .prologue
    .line 208
    const-string v2, "EM/CpuStress_ApMcu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTestUI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 213
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    if-eqz p1, :cond_4

    const v2, 0x7f08013a

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    invoke-direct {p0, p4}, Lcom/mediatek/engineermode/cpustress/ApMcu;->updateCbStatus(I)V

    .line 216
    if-gtz p7, :cond_0

    if-gtz p8, :cond_0

    if-gtz p9, :cond_0

    if-gtz p10, :cond_0

    if-gtz p11, :cond_0

    if-lez p12, :cond_1

    .line 218
    :cond_0
    sget v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    invoke-direct {p0, v2, p5, p6}, Lcom/mediatek/engineermode/cpustress/ApMcu;->showTestResult(IJ)V

    .line 221
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    .line 222
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 223
    :cond_2
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    const v3, 0x7f080121

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 210
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 213
    :cond_4
    const v2, 0x7f080139

    goto :goto_1

    .line 221
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_6
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-boolean v2, v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopApmcu:Z

    if-nez v2, :cond_7

    .line 230
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 232
    :cond_7
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, cbMask:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    :goto_1
    or-int/2addr v0, v3

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 424
    :cond_1
    const-string v3, "EM/CpuStress_ApMcu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckChanged, mask: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "mask"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v3, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateData(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 430
    .end local v0           #cbMask:I
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    .line 370
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v6, v8, :cond_3

    .line 371
    const-string v6, "EM/CpuStress_ApMcu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is clicked"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f080139

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 375
    const-wide/16 v1, 0x0

    .line 377
    .local v1, count:J
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 386
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v3, data:Landroid/os/Bundle;
    const-string v6, "loopcount"

    invoke-virtual {v3, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, cbMask:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v4, v6, :cond_1

    .line 390
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    :goto_1
    or-int/2addr v0, v6

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    .end local v0           #cbMask:I
    .end local v3           #data:Landroid/os/Bundle;
    .end local v4           #i:I
    :catch_0
    move-exception v5

    .line 379
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "EM/CpuStress_ApMcu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loopcount string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const v6, 0x7f08011d

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 403
    .end local v1           #count:J
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    :goto_2
    return-void

    .restart local v0       #cbMask:I
    .restart local v1       #count:J
    .restart local v3       #data:Landroid/os/Bundle;
    .restart local v4       #i:I
    :cond_0
    move v6, v7

    .line 390
    goto :goto_1

    .line 392
    :cond_1
    const-string v6, "mask"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v6, v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->startTest(Landroid/os/Bundle;)V

    .line 394
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/ApMcu;->updateStartUi()V

    goto :goto_2

    .line 397
    .end local v0           #cbMask:I
    .end local v1           #count:J
    .end local v3           #data:Landroid/os/Bundle;
    .end local v4           #i:I
    :cond_2
    const/16 v6, 0x3e9

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 398
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v6}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->stopTest()V

    goto :goto_2

    .line 401
    :cond_3
    const-string v6, "EM/CpuStress_ApMcu"

    const-string v7, "Unknown event"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x1

    const/16 v9, 0x8

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v5, 0x7f030040

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    const v5, 0x7f0b01ba

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mEtLoopCount:Landroid/widget/EditText;

    .line 89
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    const v5, 0x7f0b01bb

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v12

    .line 90
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    const v5, 0x7f0b01c5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v10

    .line 91
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    const v5, 0x7f0b01cf

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v8

    .line 92
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    const/4 v7, 0x3

    const v5, 0x7f0b01d9

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 93
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    const/4 v7, 0x4

    const v5, 0x7f0b01e3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 94
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    const/4 v7, 0x5

    const v5, 0x7f0b01ed

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 96
    sget v5, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    if-eq v11, v5, :cond_1

    sget v5, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    if-ne v10, v5, :cond_0

    sget v5, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-eq v9, v5, :cond_1

    .line 99
    :cond_0
    const v5, 0x7f0b01c0

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v5, 0x7f0b01ca

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v5, 0x7f0b01d4

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v5, 0x7f0b01de

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v5, 0x7f0b01e8

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v5, 0x7f0b01f2

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_1
    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "apmcu_neon_result"

    aput-object v5, v4, v12

    const-string v5, "apmcu_ca9_result"

    aput-object v5, v4, v10

    const-string v5, "apmcu_dhrystone_result"

    aput-object v5, v4, v8

    const/4 v5, 0x3

    const-string v6, "apmcu_memcpy_result"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "apmcu_fdct_result"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "apmcu_imdct_result"

    aput-object v6, v4, v5

    .line 109
    .local v4, textViewIds:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, group:I
    :goto_0
    if-ge v1, v11, :cond_4

    .line 110
    const/4 v0, 0x0

    .local v0, column:I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 112
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, id:I
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 114
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Check the text view id!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_2
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    mul-int/lit8 v5, v1, 0x8

    add-int v7, v5, v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v3           #id:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0           #column:I
    :cond_4
    const v5, 0x7f0b01f7

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    .line 120
    const v5, 0x7f0b01f8

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvResult:Landroid/widget/TextView;

    .line 121
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v11, :cond_5

    .line 122
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v5, v5, v2

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    :cond_5
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const/16 v5, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v6

    if-le v5, v6, :cond_7

    .line 127
    const/16 v2, 0x10

    :goto_3
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 128
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mTvArray:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 130
    :cond_6
    const/4 v2, 0x2

    :goto_4
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 131
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 135
    :cond_7
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CA9"

    const-string v8, "CA7"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/ApMcu;->mCbArray:[Landroid/widget/CheckBox;

    aget-object v5, v5, v12

    const v6, 0x7f080133

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_8
    new-instance v5, Lcom/mediatek/engineermode/cpustress/ApMcu$1;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/cpustress/ApMcu$1;-><init>(Lcom/mediatek/engineermode/cpustress/ApMcu;)V

    iput-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method
