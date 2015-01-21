.class public Lcom/mediatek/calendar/lunar/LunarUtil;
.super Ljava/lang/Object;
.source "LunarUtil.java"


# static fields
.field public static final DECREATE_A_LUANR_YEAR:I = -0x1

.field public static final DELIM:Ljava/lang/String; = ";"

.field public static final INCREASE_A_LUANR_YEAR:I = 0x1

.field public static final LEAP_MONTH:I = 0x0

.field private static final LUNAR2GRE_START_CHECK_DAY:I = 0x190

.field private static final LUNAR_WORD_RUN:I = 0x1

.field private static final LUNAR_YEAR_BASE:I = 0x76c

.field private static final LUNAR_YEAR_END:I = 0x7f6

.field public static final NORMAL_MONTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LunarUtil"

.field static sChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private static sInstance:Lcom/mediatek/calendar/lunar/LunarUtil;


# instance fields
.field private mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

.field private final mLunarDateFormatterString:Ljava/lang/String;

.field private final mLunarFestCHONGYANG:Ljava/lang/String;

.field private final mLunarFestCHUNJIE:Ljava/lang/String;

.field private final mLunarFestDUANWU:Ljava/lang/String;

.field private final mLunarFestERTONG:Ljava/lang/String;

.field private final mLunarFestFUNV:Ljava/lang/String;

.field private final mLunarFestGUOQING:Ljava/lang/String;

.field private final mLunarFestJIANDANG:Ljava/lang/String;

.field private final mLunarFestJIANJUN:Ljava/lang/String;

.field private final mLunarFestJIAOSHI:Ljava/lang/String;

.field private final mLunarFestLAODONG:Ljava/lang/String;

.field private final mLunarFestQINGNIAN:Ljava/lang/String;

.field private final mLunarFestQINGREN:Ljava/lang/String;

.field private final mLunarFestQIXI:Ljava/lang/String;

.field private final mLunarFestSHENGDAN:Ljava/lang/String;

.field private final mLunarFestYUANDAN:Ljava/lang/String;

.field private final mLunarFestYUANXIAO:Ljava/lang/String;

.field private final mLunarFestYUREN:Ljava/lang/String;

.field private final mLunarFestZHISHU:Ljava/lang/String;

.field private final mLunarFestZHONGQIU:Ljava/lang/String;

.field private final mLunarInfoArray:[I

.field private final mLunarTextDay:Ljava/lang/String;

.field private final mLunarTextLeap:Ljava/lang/String;

.field private final mLunarTextMonth:Ljava/lang/String;

.field private final mLunarTextTensDay:Ljava/lang/String;

.field private final mLunarTextThirtiethDay:Ljava/lang/String;

.field private final mLunarTextTwentithDay:Ljava/lang/String;

.field private final mLunarTextYear:Ljava/lang/String;

.field private final mMonthNumberArray:[Ljava/lang/String;

.field private final mSolarTermDays:[I

.field private final mSolarTermNamesArray:[Ljava/lang/String;

.field private final mTensPrefixArray:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    invoke-static {p1}, Lcom/mediatek/calendar/extension/OPExtensionFactory;->getLunarExtension(Landroid/content/Context;)Lcom/mediatek/calendar/ext/ILunarExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 555
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mMonthNumberArray:[Ljava/lang/String;

    .line 556
    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mTensPrefixArray:[Ljava/lang/String;

    .line 557
    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextLeap:Ljava/lang/String;

    .line 558
    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextTensDay:Ljava/lang/String;

    .line 559
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextTwentithDay:Ljava/lang/String;

    .line 560
    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextThirtiethDay:Ljava/lang/String;

    .line 561
    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextYear:Ljava/lang/String;

    .line 562
    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextMonth:Ljava/lang/String;

    .line 563
    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextDay:Ljava/lang/String;

    .line 564
    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarDateFormatterString:Ljava/lang/String;

    .line 565
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarDateFormatterString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/mediatek/calendar/lunar/LunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 567
    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mSolarTermNamesArray:[Ljava/lang/String;

    .line 568
    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestCHUNJIE:Ljava/lang/String;

    .line 569
    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestDUANWU:Ljava/lang/String;

    .line 570
    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestZHONGQIU:Ljava/lang/String;

    .line 571
    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestYUANDAN:Ljava/lang/String;

    .line 572
    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestLAODONG:Ljava/lang/String;

    .line 573
    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestGUOQING:Ljava/lang/String;

    .line 574
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestYUANXIAO:Ljava/lang/String;

    .line 575
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestQIXI:Ljava/lang/String;

    .line 576
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestCHONGYANG:Ljava/lang/String;

    .line 577
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestQINGNIAN:Ljava/lang/String;

    .line 578
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestQINGREN:Ljava/lang/String;

    .line 579
    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestFUNV:Ljava/lang/String;

    .line 580
    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestZHISHU:Ljava/lang/String;

    .line 581
    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestYUREN:Ljava/lang/String;

    .line 582
    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestERTONG:Ljava/lang/String;

    .line 583
    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestJIANDANG:Ljava/lang/String;

    .line 584
    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestJIANJUN:Ljava/lang/String;

    .line 585
    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestJIAOSHI:Ljava/lang/String;

    .line 586
    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestSHENGDAN:Ljava/lang/String;

    .line 588
    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarInfoArray:[I

    .line 589
    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mSolarTermDays:[I

    .line 590
    return-void
.end method

.method private canShowSCLunar()Z
    .locals 2

    .prologue
    .line 709
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getAMonthSolarTermDays(II)[I
    .locals 6
    .parameter "gregorianYear"
    .parameter "gregorianMonth"

    .prologue
    .line 460
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v2, v4, 0x2

    .line 461
    .local v2, firstSolarTermIndex:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 463
    .local v0, days:[I
    const/16 v4, 0x7b1

    if-le p1, v4, :cond_0

    const/16 v4, 0x7f5

    if-ge p1, v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mSolarTermDays:[I

    add-int/lit16 v5, p1, -0x7b2

    mul-int/lit8 v5, v5, 0x18

    add-int/2addr v5, v2

    aget v1, v4, v5

    .line 465
    .local v1, firstSolarTermDay:I
    iget-object v4, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mSolarTermDays:[I

    add-int/lit16 v5, p1, -0x7b2

    mul-int/lit8 v5, v5, 0x18

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    aget v3, v4, v5

    .line 466
    .local v3, secondSolarTermDay:I
    const/4 v4, 0x0

    aput v1, v0, v4

    .line 467
    const/4 v4, 0x1

    aput v3, v0, v4

    .line 469
    .end local v1           #firstSolarTermDay:I
    .end local v3           #secondSolarTermDay:I
    :cond_0
    return-object v0

    .line 461
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getAMonthSolarTermNames(I)[Ljava/lang/String;
    .locals 8
    .parameter "gregorianMonth"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 477
    if-lt p1, v5, :cond_0

    const/16 v2, 0xc

    if-le p1, v2, :cond_1

    .line 478
    :cond_0
    const-string v2, "LunarUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAMonthSolarTermNames(),param gregorianMonth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v5

    .line 483
    :goto_0
    return-object v1

    .line 482
    :cond_1
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v0, v2, -0x1

    .line 483
    .local v0, firstSolarTermIndex:I
    new-array v1, v7, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->getSolarTermNameByIndex(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/calendar/lunar/LunarUtil;->getSolarTermNameByIndex(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method private getGregFestival(II)Ljava/lang/String;
    .locals 6
    .parameter "gregorianMonth"
    .parameter "gregorianDay"

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 657
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowSCLunar()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 658
    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestYUANDAN:Ljava/lang/String;

    .line 701
    :goto_0
    return-object v0

    .line 661
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 662
    if-ne p2, v1, :cond_1

    .line 663
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestLAODONG:Ljava/lang/String;

    goto :goto_0

    .line 664
    :cond_1
    if-ne p2, v2, :cond_2

    .line 665
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestQINGNIAN:Ljava/lang/String;

    goto :goto_0

    .line 668
    :cond_2
    if-ne p1, v4, :cond_3

    if-ne p2, v1, :cond_3

    .line 669
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestGUOQING:Ljava/lang/String;

    goto :goto_0

    .line 671
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/16 v0, 0xe

    if-ne p2, v0, :cond_4

    .line 672
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestQINGREN:Ljava/lang/String;

    goto :goto_0

    .line 674
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 675
    if-ne p2, v3, :cond_5

    .line 676
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestFUNV:Ljava/lang/String;

    goto :goto_0

    .line 677
    :cond_5
    if-ne p2, v5, :cond_6

    .line 678
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestZHISHU:Ljava/lang/String;

    goto :goto_0

    .line 681
    :cond_6
    if-ne p1, v2, :cond_7

    if-ne p2, v1, :cond_7

    .line 682
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestYUREN:Ljava/lang/String;

    goto :goto_0

    .line 684
    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    if-ne p2, v1, :cond_8

    .line 685
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestERTONG:Ljava/lang/String;

    goto :goto_0

    .line 687
    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    if-ne p2, v1, :cond_9

    .line 688
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestJIANDANG:Ljava/lang/String;

    goto :goto_0

    .line 690
    :cond_9
    if-ne p1, v3, :cond_a

    if-ne p2, v1, :cond_a

    .line 691
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestJIANJUN:Ljava/lang/String;

    goto :goto_0

    .line 693
    :cond_a
    const/16 v0, 0x9

    if-ne p1, v0, :cond_b

    if-ne p2, v4, :cond_b

    .line 694
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestJIAOSHI:Ljava/lang/String;

    goto :goto_0

    .line 696
    :cond_b
    if-ne p1, v5, :cond_c

    const/16 v0, 0x19

    if-ne p2, v0, :cond_c

    .line 697
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestSHENGDAN:Ljava/lang/String;

    goto :goto_0

    .line 701
    :cond_c
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/calendar/ext/ILunarExtension;->getGregFestival(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/calendar/lunar/LunarUtil;
    .locals 2
    .parameter "context"

    .prologue
    .line 714
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarUtil;->sInstance:Lcom/mediatek/calendar/lunar/LunarUtil;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Lcom/mediatek/calendar/lunar/LunarUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/calendar/lunar/LunarUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarUtil;->sInstance:Lcom/mediatek/calendar/lunar/LunarUtil;

    .line 717
    :cond_0
    sget-object v0, Lcom/mediatek/calendar/lunar/LunarUtil;->sInstance:Lcom/mediatek/calendar/lunar/LunarUtil;

    return-object v0
.end method

.method private getLunarDateString(IIII)Ljava/lang/String;
    .locals 4
    .parameter "lunarYear"
    .parameter "lunarMonth"
    .parameter "lunarDay"
    .parameter "leapMonthCode"

    .prologue
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextYear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->getSpecialWord(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mMonthNumberArray:[Ljava/lang/String;

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextMonth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDayString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, luanrDateString:Ljava/lang/String;
    return-object v0

    .line 353
    .end local v0           #luanrDateString:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getLunarFestival(III)Ljava/lang/String;
    .locals 6
    .parameter "lunarMonth"
    .parameter "lunarDay"
    .parameter "lunarMonthType"

    .prologue
    const/16 v5, 0xf

    const/16 v4, 0x9

    const/4 v3, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 609
    if-nez p3, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 628
    :goto_0
    return-object v0

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowSCLunar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 613
    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestCHUNJIE:Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_2

    .line 616
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestDUANWU:Ljava/lang/String;

    goto :goto_0

    .line 617
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    if-ne p2, v5, :cond_3

    .line 618
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestZHONGQIU:Ljava/lang/String;

    goto :goto_0

    .line 619
    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v5, :cond_4

    .line 620
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestYUANXIAO:Ljava/lang/String;

    goto :goto_0

    .line 621
    :cond_4
    if-ne p1, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 622
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestQIXI:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_5
    if-ne p1, v4, :cond_6

    if-ne p2, v4, :cond_6

    .line 624
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarFestCHONGYANG:Ljava/lang/String;

    goto :goto_0

    .line 628
    :cond_6
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/calendar/ext/ILunarExtension;->getLunarFestival(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLunarNumber(IIZ)Ljava/lang/String;
    .locals 3
    .parameter "lunarMonth"
    .parameter "lunarDay"
    .parameter "isLeapMonth"

    .prologue
    const/4 v1, 0x1

    .line 531
    if-ne p2, v1, :cond_1

    .line 532
    if-eqz p3, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->getSpecialWord(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mMonthNumberArray:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mMonthNumberArray:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextMonth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDayString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSolarTermNameByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowSCLunar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mSolarTermNamesArray:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 640
    :cond_0
    const-string v0, "LunarUtil"

    const-string v1, "SolarTerm should between [1, 24]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mSolarTermNamesArray:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

    invoke-interface {v0, p1}, Lcom/mediatek/calendar/ext/ILunarExtension;->getSolarTermNameByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public calculateLunarByGregorian(III)[I
    .locals 21
    .parameter "gregorianYear"
    .parameter "gregorianMonth"
    .parameter "gregorianDay"

    .prologue
    .line 194
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 200
    .local v10, lunar:[I
    const/4 v2, 0x0

    .line 202
    .local v2, baseDate:Ljava/util/Date;
    const/4 v3, 0x0

    .line 207
    .local v3, currentDate:Ljava/util/Date;
    :try_start_0
    sget-object v17, Lcom/mediatek/calendar/lunar/LunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "1900"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextYear:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextMonth:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "31"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextDay:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 212
    :goto_0
    if-nez v2, :cond_0

    .line 213
    const-string v17, "LunarUtil"

    const-string v18, "baseDate is null,return lunar date:2000.1.1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_1
    return-object v10

    .line 208
    :catch_0
    move-exception v7

    .line 209
    .local v7, e:Ljava/text/ParseException;
    const-string v17, "LunarUtil"

    const-string v18, "calculateLunarByGregorian(),parse baseDate error."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v7           #e:Ljava/text/ParseException;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextYear:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextMonth:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextDay:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, currentDateString:Ljava/lang/String;
    :try_start_1
    sget-object v17, Lcom/mediatek/calendar/lunar/LunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 225
    :goto_2
    if-nez v3, :cond_1

    .line 226
    const-string v17, "LunarUtil"

    const-string v18, "currentDate is null,return lunar date:2000.1.1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :catch_1
    move-exception v7

    .line 222
    .restart local v7       #e:Ljava/text/ParseException;
    const-string v17, "LunarUtil"

    const-string v18, "calculateLunarByGregorian(),parse currentDate error."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 232
    .end local v7           #e:Ljava/text/ParseException;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4ca4cb80

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 236
    .local v14, offsetDaysFromBaseDate:I
    const/4 v6, 0x0

    .line 243
    .local v6, daysOfTempLunaryear:I
    const/16 v16, 0x76c

    .line 244
    .local v16, tempLunaryear:I
    :goto_3
    const/16 v17, 0x7f6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    if-lez v14, :cond_2

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLunarYear(I)I

    move-result v6

    .line 247
    sub-int/2addr v14, v6

    .line 245
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 250
    :cond_2
    if-gez v14, :cond_3

    .line 251
    add-int/2addr v14, v6

    .line 252
    add-int/lit8 v16, v16, -0x1

    .line 254
    :cond_3
    move/from16 v13, v16

    .line 257
    .local v13, lunarYear:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/calendar/lunar/LunarUtil;->leapMonth(I)I

    move-result v9

    .line 259
    .local v9, leapMonth:I
    const/4 v8, 0x0

    .line 262
    .local v8, isMinusLeapMonthDays:Z
    const/4 v5, 0x0

    .line 268
    .local v5, daysOfTempLunarMonth:I
    const/4 v15, 0x1

    .local v15, tempLunarMonth:I
    :goto_4
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    if-lez v14, :cond_6

    .line 270
    if-lez v9, :cond_5

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    if-nez v8, :cond_5

    .line 271
    add-int/lit8 v15, v15, -0x1

    .line 272
    const/4 v8, 0x1

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v5

    .line 278
    :goto_5
    sub-int/2addr v14, v5

    .line 281
    if-eqz v8, :cond_4

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    .line 282
    const/4 v8, 0x0

    .line 268
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 275
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v5

    goto :goto_5

    .line 287
    :cond_6
    if-nez v14, :cond_7

    if-lez v9, :cond_7

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 288
    if-eqz v8, :cond_9

    .line 289
    const/4 v8, 0x0

    .line 296
    :cond_7
    :goto_6
    if-gez v14, :cond_8

    .line 297
    add-int/2addr v14, v5

    .line 298
    add-int/lit8 v15, v15, -0x1

    .line 300
    :cond_8
    move v12, v15

    .line 305
    .local v12, lunarMonth:I
    add-int/lit8 v11, v14, 0x1

    .line 307
    .local v11, lunarDay:I
    const/16 v17, 0x0

    aput v13, v10, v17

    .line 308
    const/16 v17, 0x1

    aput v12, v10, v17

    .line 309
    const/16 v17, 0x2

    aput v11, v10, v17

    .line 310
    const/16 v18, 0x3

    if-eqz v8, :cond_a

    const/16 v17, 0x0

    :goto_7
    aput v17, v10, v18

    goto/16 :goto_1

    .line 291
    .end local v11           #lunarDay:I
    .end local v12           #lunarMonth:I
    :cond_9
    const/4 v8, 0x1

    .line 292
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 310
    .restart local v11       #lunarDay:I
    .restart local v12       #lunarMonth:I
    :cond_a
    const/16 v17, 0x1

    goto :goto_7

    .line 194
    nop

    :array_0
    .array-data 0x4
        0xd0t 0x7t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public canShowLunarCalendar()Z
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowSCLunar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

    invoke-interface {v0}, Lcom/mediatek/calendar/ext/ILunarExtension;->canShowLunarCalendar()Z

    move-result v0

    goto :goto_0
.end method

.method public daysOfALunarMonth(II)I
    .locals 2
    .parameter "luanrYear"
    .parameter "lunarMonth"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarInfoArray:[I

    add-int/lit16 v1, p1, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x1

    shr-int/2addr v1, p2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 147
    const/16 v0, 0x1d

    .line 149
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public daysOfLeapMonthInLunarYear(I)I
    .locals 2
    .parameter "lunarYear"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/mediatek/calendar/lunar/LunarUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarInfoArray:[I

    add-int/lit16 v1, p1, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 116
    const/16 v0, 0x1e

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public daysOfLunarYear(I)I
    .locals 4
    .parameter "lunarYear"

    .prologue
    .line 97
    const/16 v1, 0x15c

    .line 98
    .local v1, sum:I
    const v0, 0x8000

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarInfoArray:[I

    add-int/lit16 v3, p1, -0x76c

    aget v2, v2, v3

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public decreaseOrIncreaseALunarYear(Ljava/util/Calendar;III)Ljava/util/Calendar;
    .locals 10
    .parameter "calendar"
    .parameter "lunarMonth"
    .parameter "lunarDay"
    .parameter "operatorType"

    .prologue
    .line 369
    const/4 v7, 0x1

    if-eq p4, v7, :cond_0

    const/4 v7, -0x1

    if-eq p4, v7, :cond_0

    .line 370
    const-string v7, "LunarUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "operatorType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error! Cann\'t increase or decrease a lunar year on this time."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local p1
    :goto_0
    return-object p1

    .line 375
    .restart local p1
    :cond_0
    mul-int/lit16 v5, p4, 0x190

    .line 377
    .local v5, offset:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 378
    .local v4, newCalendar:Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 379
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 386
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 387
    .local v6, year:I
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 388
    .local v3, month:I
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 389
    .local v0, day:I
    invoke-virtual {p0, v6, v3, v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v1

    .line 391
    .local v1, lunarDates:[I
    const/4 v7, 0x0

    aget v2, v1, v7

    .line 394
    .local v2, lunarYear:I
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 395
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 396
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 397
    invoke-virtual {p0, v6, v3, v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v1

    .line 398
    const/4 v7, 0x1

    aget v7, v1, v7

    if-ne v7, p2, :cond_2

    const/4 v7, 0x2

    aget v7, v1, v7

    if-ne v7, p3, :cond_2

    :cond_1
    :goto_2
    move-object p1, v4

    .line 427
    goto :goto_0

    .line 407
    :cond_2
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3

    const/4 v7, 0x1

    aget v7, v1, v7

    if-ne v7, p2, :cond_3

    const/4 v7, 0x2

    aget v7, v1, v7

    if-ge v7, p3, :cond_3

    .line 410
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 419
    :cond_3
    const/4 v7, -0x1

    if-ne p4, v7, :cond_4

    const/4 v7, 0x0

    aget v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v2, :cond_4

    const/4 v7, 0x1

    aget v7, v1, v7

    if-gt v7, p2, :cond_1

    .line 424
    :cond_4
    const/4 v7, 0x5

    neg-int v8, p4

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public getLunarDateString(III)Ljava/lang/String;
    .locals 5
    .parameter "gregorianYear"
    .parameter "gregorianMonth"
    .parameter "gregorianDay"

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v0

    .line 339
    .local v0, lunarDate:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .parameter "cal"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 320
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 321
    .local v2, gregorianYear:I
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 322
    .local v1, gregorianMonth:I
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 324
    .local v0, gregorianDay:I
    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    .line 326
    .local v3, lunarDate:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getLunarDayString(I)Ljava/lang/String;
    .locals 5
    .parameter "lunarDay"

    .prologue
    .line 158
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_1

    const/16 v0, 0x9

    .line 159
    .local v0, n:I
    :goto_0
    if-ltz p1, :cond_0

    const/16 v2, 0x1e

    if-le p1, v2, :cond_2

    .line 160
    :cond_0
    const-string v1, ""

    .line 179
    :goto_1
    return-object v1

    .line 158
    .end local v0           #n:I
    :cond_1
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 164
    .restart local v0       #n:I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mTensPrefixArray:[Ljava/lang/String;

    div-int/lit8 v4, p1, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mMonthNumberArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, ret:Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v1           #ret:Ljava/lang/String;
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextTensDay:Ljava/lang/String;

    .line 167
    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_1

    .line 169
    .end local v1           #ret:Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextTwentithDay:Ljava/lang/String;

    .line 170
    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_1

    .line 172
    .end local v1           #ret:Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextThirtiethDay:Ljava/lang/String;

    .line 173
    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_1

    .line 164
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public getLunarFestivalChineseString(III)Ljava/lang/String;
    .locals 10
    .parameter "gregorianYear"
    .parameter "gregorianMonth"
    .parameter "gregorianDay"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v1, chineseStringBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 502
    .local v0, chineseString:Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Lcom/mediatek/calendar/lunar/LunarUtil;->getGregFestival(II)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    .line 508
    .local v3, lunarDate:[I
    aget v5, v3, v4

    aget v6, v3, v8

    aget v7, v3, v9

    invoke-direct {p0, v5, v6, v7}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarFestival(III)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 510
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/calendar/lunar/LunarUtil;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 514
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 517
    aget v5, v3, v9

    if-nez v5, :cond_3

    move v2, v4

    .line 518
    .local v2, isLeapMonth:Z
    :goto_0
    aget v4, v3, v4

    aget v5, v3, v8

    invoke-direct {p0, v4, v5, v2}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarNumber(IIZ)Ljava/lang/String;

    move-result-object v4

    .line 520
    .end local v2           #isLeapMonth:Z
    :goto_1
    return-object v4

    .line 517
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 520
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getSolarTerm(III)Ljava/lang/String;
    .locals 6
    .parameter "gregorianYear"
    .parameter "gregorianMonth"
    .parameter "gregorianDay"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/mediatek/calendar/lunar/LunarUtil;->getAMonthSolarTermDays(II)[I

    move-result-object v0

    .line 440
    .local v0, days:[I
    aget v3, v0, v4

    if-eq p3, v3, :cond_1

    aget v3, v0, v5

    if-eq p3, v3, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-object v2

    .line 444
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/calendar/lunar/LunarUtil;->getAMonthSolarTermNames(I)[Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, names:[Ljava/lang/String;
    aget v3, v0, v4

    if-ne p3, v3, :cond_2

    .line 446
    aget-object v2, v1, v4

    goto :goto_0

    .line 447
    :cond_2
    aget v3, v0, v5

    if-ne p3, v3, :cond_0

    .line 448
    aget-object v2, v1, v5

    goto :goto_0
.end method

.method public getSpecialWord(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowSCLunar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarTextLeap:Ljava/lang/String;

    .line 732
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mExt:Lcom/mediatek/calendar/ext/ILunarExtension;

    invoke-interface {v0, p1}, Lcom/mediatek/calendar/ext/ILunarExtension;->getSpecialWord(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public leapMonth(I)I
    .locals 3
    .parameter "lunarYear"

    .prologue
    .line 131
    const/16 v0, 0x76c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x834

    if-le p1, v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "LunarUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get leapMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is out of range.return 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarUtil;->mLunarInfoArray:[I

    add-int/lit16 v1, p1, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method
