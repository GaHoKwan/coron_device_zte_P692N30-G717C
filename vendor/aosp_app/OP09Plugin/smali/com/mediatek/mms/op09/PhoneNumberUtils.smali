.class public Lcom/mediatek/mms/op09/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mLocale:Ljava/util/Locale;

    .line 33
    return-void
.end method

.method private getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 43
    iget-object v3, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/geocoding/GeoCodingQuery;->getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;

    move-result-object v0

    .line 44
    .local v0, gcQuery:Lcom/mediatek/geocoding/GeoCodingQuery;
    invoke-virtual {v0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, geoInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    .end local v1           #geoInfo:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 50
    .restart local v1       #geoInfo:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mms/op09/PhoneNumberUtils;->parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 51
    .local v2, structuredPhoneNumber:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/mediatek/mms/op09/PhoneNumberUtils;->getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v2, v4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mms/op09/PhoneNumberUtils;->getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 91
    .local v0, countryDetector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mCurrentCountryIso:Ljava/lang/String;

    .line 98
    .end local v0           #countryDetector:Landroid/location/CountryDetector;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mms/op09/PhoneNumberUtils;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNumberLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/PhoneNumberUtils;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, countryIso:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mms/op09/PhoneNumberUtils;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
