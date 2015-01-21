.class public Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "OP09InternationalCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;


# static fields
.field private static final CHINA_MAINLAND_MCC:Ljava/lang/String; = "460"

.field private static final COUNTRY_ISO_CHINA:Ljava/lang/String; = "CN"

.field private static final DIALING_GUIDE_CLASS:Ljava/lang/String; = "com.mediatek.calloption.plugin.ESurfingDialingGuideActivity"

.field private static final HONGKONG_MCC:Ljava/lang/String; = "454"

.field private static final MACAU_MCC:Ljava/lang/String; = "455"

.field private static final PLUGIN_PACKAGE:Ljava/lang/String; = "com.mediatek.op09.plugin"

.field private static final TAG:Ljava/lang/String; = "OP09InternationalCallOptionHandler"

.field private static final TAIWAN_MCC:Ljava/lang/String; = "466"


# instance fields
.field private final VALID_133_COUNTRY_ISO:[Ljava/lang/String;

.field private mCTCallBackRadioButton:Landroid/widget/RadioButton;

.field private mCountrySelectButton:Landroid/widget/Button;

.field protected mCountrySelectDialogHandler:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

.field private mDialToHome:Ljava/lang/String;

.field private mESurfingDialingHelp:Landroid/widget/ImageButton;

.field private mHomeCountryGroup:Landroid/widget/RadioGroup;

.field private mHomeCountryRadioButton:Landroid/widget/RadioButton;

.field private mHomeMcc:Ljava/lang/String;

.field private mInternationalCallRadioButton:Landroid/widget/RadioButton;

.field private mPhoneNumEdit:Landroid/widget/EditText;

.field private mPluginContext:Landroid/content/Context;

.field private mRequest:Lcom/mediatek/calloption/Request;

.field private mSelectCountryISO:Ljava/lang/String;

.field private mWholeGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "pluginContext"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 95
    const/16 v0, 0x72

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DZ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BH"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BJ"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "BO"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BW"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BI"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CL"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CG"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "CY"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "DK"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EG"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "FI"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "GF"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "GH"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "GI"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "GN"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "IQ"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "JO"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "KW"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "LA"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "LV"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "LB"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "LY"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "MG"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "MW"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "MV"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "MU"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "MD"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "MN"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "MZ"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "NA"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "NP"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "NE"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "NG"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "OM"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "PK"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "PY"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "PE"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "RO"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "SA"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "SN"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "SL"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "ZA"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "LK"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "SD"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "SR"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "SZ"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "TZ"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "TN"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "TR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "UG"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "UZ"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "ZW"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "ZM"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "HR"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "FO"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "GP"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "RE"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "MR"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "MK"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "ER"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "CV"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "GQ"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "AF"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->VALID_133_COUNTRY_ISO:[Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method private can133CallBackFunctionWork()Z
    .locals 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone.extra.slot"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 423
    .local v0, slot:I
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->isCurrentCountryFromValid133()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v1, locale:Ljava/util/Locale;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 391
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

.method private getNetworkCountryISO(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkCountryISO(), slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 397
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkCountryISO(), country ISO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 402
    :goto_0
    return-object v1

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkCountryISO(), country ISO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPhoneNumText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 437
    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.slot"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 438
    .local v4, slot:I
    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v6}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, number2:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, formatNumber:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInternationalPhoneNumber(), mSelectCountryISO = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 442
    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 443
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, countryCode:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .end local v0           #countryCode:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInternationalPhoneNumber(), formatNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 448
    return-object v1
.end method

.method private initHomeCountry()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 452
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 453
    .local v1, slot:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSIMOperator(), slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 455
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 456
    .local v0, mccMnc:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 457
    if-nez v1, :cond_1

    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_0

    .line 468
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    .line 469
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    const-string v4, "460"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 470
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090159

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialToHome:Ljava/lang/String;

    .line 481
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSIMOperator(), mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 482
    return-void

    .line 459
    :cond_1
    if-ne v7, v1, :cond_2

    invoke-virtual {v2, v7}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    invoke-virtual {v2, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_2
    const-string v3, "there is no valid UIM card in the phone!"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_3
    const-string v3, "mTelephonyManager is null!"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_4
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    const-string v4, "455"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 472
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f09015a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialToHome:Ljava/lang/String;

    goto :goto_1

    .line 473
    :cond_5
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    const-string v4, "454"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f09015b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialToHome:Ljava/lang/String;

    goto :goto_1

    .line 475
    :cond_6
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    const-string v4, "466"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 476
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f09015c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialToHome:Ljava/lang/String;

    goto :goto_1

    .line 478
    :cond_7
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f0900ef

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialToHome:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private isCurrentCountryFromValid133()Z
    .locals 6

    .prologue
    .line 427
    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, currentCountryISO:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->VALID_133_COUNTRY_ISO:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 429
    .local v1, countryISO:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 430
    const/4 v5, 0x1

    .line 433
    .end local v1           #countryISO:Ljava/lang/String;
    :goto_1
    return v5

    .line 428
    .restart local v1       #countryISO:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v1           #countryISO:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 485
    const-string v0, "OP09InternationalCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method

.method private showYiDialingDialog()V
    .locals 5

    .prologue
    .line 220
    const-string v3, "showYiDialingDialog()"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 223
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030026

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, dialogTitleView:Landroid/view/View;
    const v3, 0x7f0b009a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mESurfingDialingHelp:Landroid/widget/ImageButton;

    .line 225
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mESurfingDialingHelp:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->createYiDialingDialogView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 233
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 234
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 235
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 236
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 238
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method


# virtual methods
.method protected createYiDialingDialogView()Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0b0055

    const v7, 0x7f0b0052

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 243
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, dialogView:Landroid/view/View;
    const v3, 0x7f0b0050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    .line 246
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getDefaultButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    const v3, 0x7f0b0098

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mWholeGroup:Landroid/widget/RadioGroup;

    .line 251
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mWholeGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 252
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mWholeGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 254
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryRadioButton:Landroid/widget/RadioButton;

    .line 255
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryRadioButton:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mDialToHome:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const v3, 0x7f0b0099

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    .line 258
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 260
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mInternationalCallRadioButton:Landroid/widget/RadioButton;

    .line 261
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mInternationalCallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v3, 0x7f0b0058

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    .line 263
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->can133CallBackFunctionWork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 271
    :goto_0
    const-string v3, "CN"

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    .line 273
    const v3, 0x7f0b0051

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    .line 274
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 278
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 279
    .local v0, currentPosition:I
    if-lez v0, :cond_0

    .line 280
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 282
    :cond_0
    return-object v1

    .line 268
    .end local v0           #currentPosition:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "dismissDialog()"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->onHandledDialogDismiss()V

    .line 419
    :cond_0
    return-void
.end method

.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 14
    .parameter "request"

    .prologue
    .line 129
    const-string v11, "handleRequest()"

    invoke-static {v11}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 133
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "com.android.phone.extra.international"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 135
    .local v4, internationalDialOption:I
    const/4 v11, 0x1

    if-ne v11, v4, :cond_1

    .line 136
    const-string v11, "international dial option is dial with country code, show yi dialing dialog directly"

    invoke-static {v11}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->showYiDialingDialog()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "com.android.phone.extra.slot"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 143
    .local v9, slot:I
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "ct_e_surfing_dialing_key"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v10, 0x1

    .line 146
    .local v10, supporteSufing:Z
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "supportEsufing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 148
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v11, :cond_4

    if-eqz v10, :cond_2

    const/4 v11, -0x1

    if-eq v11, v9, :cond_2

    invoke-static {v9}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 150
    :cond_2
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v11, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 143
    .end local v10           #supporteSufing:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 155
    .restart local v10       #supporteSufing:Z
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, number:Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v11}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, currentCountryISO:Ljava/lang/String;
    const-string v11, "CN"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "MO"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    const-string v11, "**133*86"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 161
    const-string v11, "**133*86"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 162
    const-string v11, "#"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 163
    const-string v11, "OP09InternationalCallOptionHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "number replace = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v11, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v11, :cond_0

    .line 167
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v11, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 173
    :cond_6
    const-string v11, "+"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "**133"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 174
    :cond_7
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v11, :cond_0

    .line 175
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v11, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 181
    :cond_8
    invoke-direct {p0, v9}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getNetworkCountryISO(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, internationlPrefix:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "internationlPrefix = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 183
    if-nez v5, :cond_9

    .line 184
    const-string v11, "internationlPrefix is null"

    invoke-static {v11}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 185
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v11, :cond_0

    .line 186
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v11, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 190
    :cond_9
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 191
    .local v8, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 192
    .local v6, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 193
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v11, :cond_0

    .line 194
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v11, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 200
    :cond_a
    const-string v2, "first_load_esurfing_"

    .line 201
    .local v2, firstLoadEsurfing:Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->initHomeCountry()V

    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSIMOperator(), firstLoadEsurfing = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 204
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, firstLoad:I
    if-nez v1, :cond_b

    .line 206
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    .local v3, intent:Landroid/content/Intent;
    const/high16 v11, 0x1001

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const-string v11, "com.mediatek.op09.plugin"

    const-string v12, "com.mediatek.calloption.plugin.ESurfingDialingGuideActivity"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v11, "com.android.phone.extra.slot"

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v11, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v3, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v11, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v11, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    .end local v3           #intent:Landroid/content/Intent;
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->showYiDialingDialog()V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 290
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 292
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mWholeGroup:Landroid/widget/RadioGroup;

    if-ne p1, v3, :cond_1

    .line 305
    const v3, 0x7f0b0052

    if-ne v3, p2, :cond_5

    .line 306
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 307
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mInternationalCallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 308
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->can133CallBackFunctionWork()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 313
    :goto_0
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getDefaultButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const-string v3, "CN"

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    .line 317
    const v3, 0x7f0b0055

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 318
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 344
    .local v0, currentPosition:I
    if-lez v0, :cond_1

    .line 345
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 348
    .end local v0           #currentPosition:I
    :cond_1
    return-void

    .line 311
    :cond_2
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_0

    .line 319
    :cond_3
    const v3, 0x7f0b0058

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, formatNumber:Ljava/lang/String;
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**133*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 327
    .end local v1           #formatNumber:Ljava/lang/String;
    :cond_5
    const v3, 0x7f0b005b

    if-ne v3, p2, :cond_6

    .line 328
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mInternationalCallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 329
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 330
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 331
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 333
    :cond_6
    const v3, 0x7f0b005e

    if-ne v3, p2, :cond_0

    .line 334
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mInternationalCallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 335
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 336
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mHomeCountryGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 337
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getDefaultButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const-string v3, "CN"

    iput-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v4}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0, v1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 352
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    if-ne p1, v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

    if-nez v4, :cond_0

    .line 354
    new-instance v4, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6, p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler$OnCountrySelectListener;)V

    iput-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

    .line 358
    :cond_0
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;

    invoke-virtual {v4}, Lcom/mediatek/calloption/plugin/OP09InternationalCountrySelectDialogHandler;->showCountrySelectDialog()V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mInternationalCallRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v4, :cond_3

    .line 360
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 362
    .local v0, currentPosition:I
    if-lez v0, :cond_1

    .line 363
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 365
    .end local v0           #currentPosition:I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCTCallBackRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v4, :cond_5

    .line 366
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, formatNumber:Ljava/lang/String;
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 368
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**133*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 373
    .restart local v0       #currentPosition:I
    if-lez v0, :cond_1

    .line 374
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 376
    .end local v0           #currentPosition:I
    .end local v1           #formatNumber:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mESurfingDialingHelp:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_1

    .line 378
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v4}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.phone.extra.slot"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 379
    .local v3, slot:I
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 382
    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v4, "com.mediatek.op09.plugin"

    const-string v5, "com.mediatek.calloption.plugin.ESurfingDialingGuideActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCountrySelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "countryISO"
    .parameter "countryCode"
    .parameter "countryName"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mSelectCountryISO:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mCountrySelectButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->mPhoneNumEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->getPhoneNumText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 286
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 287
    return-void
.end method
