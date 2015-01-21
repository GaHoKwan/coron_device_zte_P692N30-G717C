.class public Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;
.super Landroid/app/Activity;
.source "ESurfingDialingGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$1;,
        Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;,
        Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final CHINA_MAINLAND_EXAMPLE_NO:Ljava/lang/String; = "01058501234"

.field private static final CHINA_MAINLAND_MCC:Ljava/lang/String; = "460"

.field private static final HONGKONG_EXAMPLE_NO:Ljava/lang/String; = "39437000"

.field private static final HONGKONG_MCC:Ljava/lang/String; = "454"

.field private static final MACAU_EXAMPLE_NO:Ljava/lang/String; = "28831622"

.field private static final MACAU_MCC:Ljava/lang/String; = "455"

.field private static final OTHER_EXAMPLE_NO:Ljava/lang/String; = "26806802"

.field private static final TAG:Ljava/lang/String; = "ESurfingDialingGuideActivity"

.field private static final TAIWAN_EXAMPLE_NO:Ljava/lang/String; = "0226598088"

.field private static final TAIWAN_MCC:Ljava/lang/String; = "466"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mCurrentPosition:I

.field private mDialToHome:Ljava/lang/String;

.field private mDialingGuide:Landroid/view/ViewGroup;

.field private mExampleNumber:Ljava/lang/String;

.field private mGuidePager:Landroid/support/v4/view/ViewPager;

.field private mIntent:Landroid/content/Intent;

.field private mMcc:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSlotId:I

.field private mStep2Discript:Ljava/lang/String;

.field private mStepViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 243
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->getExampleFormatePhoneNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCountryButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentCountryIso:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v1, locale:Ljava/util/Locale;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, countryCode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getExampleFormatePhoneNo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 384
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, number2:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, formatNumber:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumText(), currentCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 387
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, countryCode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v0           #countryCode:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumText(), formatNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 393
    return-object v1
.end method

.method private initEsurfingGuide()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExamplePhoneNo() mSlotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 403
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 405
    .local v0, mccMnc:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 406
    iget v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mSlotId:I

    if-nez v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExamplePhoneNo() mccMnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 417
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 418
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    .line 419
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    const-string v3, "460"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 420
    const-string v2, "01058501234"

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    .line 421
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090159

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialToHome:Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f09015f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;

    .line 441
    :cond_0
    :goto_1
    return-void

    .line 408
    :cond_1
    iget v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mSlotId:I

    if-ne v5, v2, :cond_2

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_2
    const-string v2, "there is no valid UIM card in the phone!"

    invoke-static {v2}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_3
    const-string v2, "mTelephonyManager is null!"

    invoke-static {v2}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_4
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    const-string v3, "455"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    const-string v2, "28831622"

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    .line 425
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f09015a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialToHome:Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090160

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;

    goto :goto_1

    .line 427
    :cond_5
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    const-string v3, "454"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 428
    const-string v2, "39437000"

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    .line 429
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f09015b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialToHome:Ljava/lang/String;

    .line 430
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090161

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;

    goto :goto_1

    .line 431
    :cond_6
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    const-string v3, "466"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 432
    const-string v2, "0226598088"

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    .line 433
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f09015c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialToHome:Ljava/lang/String;

    .line 434
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;

    goto/16 :goto_1

    .line 436
    :cond_7
    const-string v2, "26806802"

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    .line 437
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0900ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialToHome:Ljava/lang/String;

    .line 438
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 444
    const-string v0, "ESurfingDialingGuideActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 167
    const v0, 0x7f0b006e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 171
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 70
    iput-object p0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    .line 74
    const v7, 0x7f03001a

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, step1View:Landroid/view/View;
    const v7, 0x7f03001c

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, step2View:Landroid/view/View;
    const v7, 0x7f03001e

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, step3View:Landroid/view/View;
    const v7, 0x7f03001b

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, step4View:Landroid/view/View;
    const v7, 0x7f030019

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 79
    .local v5, step5View:Landroid/view/View;
    const v7, 0x7f03001d

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 81
    .local v6, step6View:Landroid/view/View;
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const v7, 0x7f030017

    invoke-virtual {v0, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialingGuide:Landroid/view/ViewGroup;

    .line 89
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialingGuide:Landroid/view/ViewGroup;

    const v8, 0x7f0b004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    .line 90
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialingGuide:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;

    invoke-direct {v8, p0, v9}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;-><init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$1;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 93
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;

    invoke-direct {v8, p0, v9}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;-><init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$1;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 161
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    const-string v10, "onResume"

    invoke-static {v10}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.android.phone.extra.slot"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mSlotId:I

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mPhoneNumber:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->initEsurfingGuide()V

    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, firstLoad:I
    const-string v6, "first_load_esurfing_"

    .line 106
    .local v6, firstLoadEsurfing:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mMcc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 108
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mPhoneNumber:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume firstLoadEsurfing : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 110
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v6, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    :cond_0
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mGuidePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 114
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const-string v11, "country_detector"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 116
    .local v1, detector:Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v10

    invoke-virtual {v10}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentCountryIso:Ljava/lang/String;

    .line 118
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 119
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 120
    .local v9, stepView:Landroid/view/View;
    const v10, 0x7f0b0071

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, dialPadNumEdit:Landroid/widget/TextView;
    const v10, 0x7f0b0050

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, countrySelect:Landroid/widget/TextView;
    const v10, 0x7f0b0051

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, eSurfingNumEdit:Landroid/widget/TextView;
    const v10, 0x7f0b0054

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, dialToHomeCountry:Landroid/widget/TextView;
    const v10, 0x7f0b006e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 126
    .local v8, skipButton:Landroid/widget/Button;
    if-eqz v2, :cond_2

    .line 127
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    if-eqz v4, :cond_3

    .line 130
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->getExampleFormatePhoneNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_3
    if-eqz v0, :cond_4

    .line 133
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->getCountryButtonText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_4
    if-eqz v3, :cond_5

    .line 136
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mDialToHome:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_5
    if-eqz v8, :cond_1

    .line 139
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mPhoneNumber:Ljava/lang/String;

    if-eqz v10, :cond_6

    if-eqz v5, :cond_7

    .line 141
    :cond_6
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v11, 0x7f090169

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_7
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 143
    iget-object v10, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;

    const v11, 0x7f090168

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    .end local v0           #countrySelect:Landroid/widget/TextView;
    .end local v2           #dialPadNumEdit:Landroid/widget/TextView;
    .end local v3           #dialToHomeCountry:Landroid/widget/TextView;
    .end local v4           #eSurfingNumEdit:Landroid/widget/TextView;
    .end local v8           #skipButton:Landroid/widget/Button;
    .end local v9           #stepView:Landroid/view/View;
    :cond_8
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 177
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->log(Ljava/lang/String;)V

    .line 178
    return-void
.end method
