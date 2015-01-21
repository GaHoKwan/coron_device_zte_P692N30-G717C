.class public Lcom/hf/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TYPE_MOBILE:I = 0x1

.field public static final TYPE_NET_DISABLED:I = -0x1

.field public static final TYPE_OTHER:I = 0x2

.field public static final TYPE_WIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CToF(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cTemperature"

    .prologue
    .line 549
    const/4 v2, 0x0

    .line 551
    .local v2, fTemperature:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 552
    .local v0, c:I
    int-to-double v3, v0

    const-wide v5, 0x3ffccccccccccccdL

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4040

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 553
    .local v1, f:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 557
    .end local v0           #c:I
    .end local v1           #f:I
    :goto_0
    return-object v2

    .line 554
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final ExistSDCard()Z
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "mounted"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTime(Ljava/lang/String;)Z
    .locals 7
    .parameter "time"

    .prologue
    .line 713
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-M-d H:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 714
    .local v3, formate:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 715
    .local v1, current_date:Ljava/util/Date;
    const/4 v0, 0x0

    .line 717
    .local v0, compare:I
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 718
    .local v4, time_date:Ljava/util/Date;
    invoke-virtual {v4, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 723
    .end local v4           #time_date:Ljava/util/Date;
    :goto_0
    if-gez v0, :cond_0

    const/4 v5, 0x0

    :goto_1
    return v5

    .line 719
    :catch_0
    move-exception v2

    .line 720
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 723
    .end local v2           #e:Ljava/text/ParseException;
    :cond_0
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "time"
    .parameter "flag"

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, dateStr:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 462
    .local v3, format:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 463
    .local v4, template:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 474
    :goto_0
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 475
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 484
    .end local v0           #date:Ljava/util/Date;
    :goto_1
    return-object v1

    .line 465
    :pswitch_0
    const v5, 0x7f080130

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 466
    goto :goto_0

    .line 468
    :pswitch_1
    const v5, 0x7f080131

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 469
    goto :goto_0

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 480
    .end local v2           #e:Ljava/text/ParseException;
    :catch_1
    move-exception v2

    .line 482
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatWeek(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "week"

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, weekStr:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, weeks:[Ljava/lang/String;
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 571
    const-string v2, "formatWeek"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "week = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    .line 574
    return-object v0
.end method

.method public static getCityNameSize(Landroid/content/Context;IF)F
    .locals 2
    .parameter "context"
    .parameter "length"
    .parameter "standard"

    .prologue
    .line 766
    move v0, p2

    .line 768
    .local v0, size:F
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    .line 770
    const v1, 0x3fa66666

    div-float/2addr v0, v1

    .line 778
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    const/16 v1, 0xf

    if-lt p1, v1, :cond_0

    .line 774
    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static getDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "calendar"
    .parameter "format"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, date:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 418
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v3, 0x7f080066

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 419
    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 420
    .local v2, time:Ljava/lang/StringBuffer;
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 447
    :goto_0
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 448
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 423
    :pswitch_0
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 426
    :pswitch_1
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 429
    :pswitch_2
    const v3, 0x7f080069

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 432
    :pswitch_3
    const v3, 0x7f08006a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 435
    :pswitch_4
    const v3, 0x7f08006b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 438
    :pswitch_5
    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 441
    :pswitch_6
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final getDefaultBgIndex(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 493
    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x4

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, deviceId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 87
    .local v1, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .end local v1           #manager:Landroid/telephony/TelephonyManager;
    :cond_0
    return-object v0
.end method

.method public static getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "city"

    .prologue
    .line 788
    if-nez p1, :cond_1

    .line 789
    const/4 v1, 0x0

    .line 807
    :cond_0
    :goto_0
    return-object v1

    .line 791
    :cond_1
    const/4 v1, 0x0

    .line 792
    .local v1, name:Ljava/lang/String;
    iget-object v2, p1, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 794
    :goto_1
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_2

    .line 795
    const-string v2, "ZTE-setName"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "; name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 800
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 801
    goto :goto_0

    .line 792
    :cond_3
    iget-object v1, p1, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    goto :goto_1

    .line 802
    :cond_5
    iget-object v2, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, first:Ljava/lang/String;
    iget-object v2, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLunar(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v1, Lcom/hf/utils/Lunar;

    invoke-direct {v1, v0, p0}, Lcom/hf/utils/Lunar;-><init>(Ljava/util/Calendar;Landroid/content/Context;)V

    .line 197
    .local v1, mLunar:Lcom/hf/utils/Lunar;
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 198
    const-string v2, "ChineseCalendar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lunar = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hf/utils/Lunar;->getLunarDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; days = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hf/utils/Lunar;->getRecentFestival()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hf/utils/Lunar;->getLunarYearString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hf/utils/Lunar;->getLunarDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 133
    invoke-static {p0}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 135
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 136
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 150
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return v3

    .line 139
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 140
    .local v2, type:I
    if-ne v2, v3, :cond_3

    .line 141
    const/4 v3, 0x0

    goto :goto_0

    .line 142
    :cond_3
    if-eqz v2, :cond_1

    move v3, v4

    .line 147
    goto :goto_0

    .line 150
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #type:I
    :cond_4
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    .local v1, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 107
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 108
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 67
    .local v1, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 68
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v2

    .line 72
    const-string v2, ""

    goto :goto_0
.end method

.method public static final getPreventiveId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "name"
    .parameter "change"

    .prologue
    .line 925
    const-string v1, "change"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 927
    const/4 v0, 0x0

    .line 1030
    :cond_0
    :goto_0
    return v0

    .line 929
    :cond_1
    const/4 v0, 0x0

    .line 930
    .local v0, id:I
    const-string v1, "bb_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    const-string v1, "bb_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    const v0, 0x7f080101

    .line 934
    goto :goto_0

    :cond_2
    const-string v1, "bb_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    const v0, 0x7f080102

    .line 936
    goto :goto_0

    :cond_3
    const-string v1, "by_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 937
    const v0, 0x7f0800e1

    .line 938
    goto :goto_0

    :cond_4
    const-string v1, "by_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 939
    const v0, 0x7f0800e3

    .line 940
    goto :goto_0

    :cond_5
    const-string v1, "by_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 941
    const v0, 0x7f0800e4

    .line 942
    goto :goto_0

    :cond_6
    const-string v1, "by_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 943
    const v0, 0x7f0800e2

    .line 944
    goto :goto_0

    :cond_7
    const-string v1, "bx_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 945
    const v0, 0x7f0800e5

    .line 946
    goto :goto_0

    :cond_8
    const-string v1, "bx_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 947
    const v0, 0x7f0800e7

    .line 948
    goto :goto_0

    :cond_9
    const-string v1, "bx_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 949
    const v0, 0x7f0800e8

    .line 950
    goto :goto_0

    :cond_a
    const-string v1, "bx_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 951
    const v0, 0x7f0800e6

    .line 952
    goto/16 :goto_0

    :cond_b
    const-string v1, "df_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 953
    const v0, 0x7f080106

    .line 954
    goto/16 :goto_0

    :cond_c
    const-string v1, "df_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 955
    const v0, 0x7f080108

    .line 956
    goto/16 :goto_0

    :cond_d
    const-string v1, "df_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 957
    const v0, 0x7f080109

    .line 958
    goto/16 :goto_0

    :cond_e
    const-string v1, "df_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 959
    const v0, 0x7f080107

    .line 960
    goto/16 :goto_0

    :cond_f
    const-string v1, "dljb_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 961
    const v0, 0x7f080104

    .line 962
    goto/16 :goto_0

    :cond_10
    const-string v1, "dljb_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 963
    const v0, 0x7f080105

    .line 964
    goto/16 :goto_0

    :cond_11
    const-string v1, "dljb_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 965
    const v0, 0x7f080103

    .line 966
    goto/16 :goto_0

    :cond_12
    const-string v1, "dw_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 968
    const-string v1, "dw_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 969
    const v0, 0x7f0800f9

    .line 970
    goto/16 :goto_0

    :cond_13
    const-string v1, "dw_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 971
    const v0, 0x7f0800fa

    .line 972
    goto/16 :goto_0

    :cond_14
    const-string v1, "dw_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 973
    const v0, 0x7f0800f8

    .line 974
    goto/16 :goto_0

    :cond_15
    const-string v1, "gh_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 975
    const v0, 0x7f0800f3

    .line 976
    goto/16 :goto_0

    :cond_16
    const-string v1, "gh_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 977
    const v0, 0x7f0800f4

    .line 978
    goto/16 :goto_0

    :cond_17
    const-string v1, "gw_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 979
    const v0, 0x7f0800f1

    .line 980
    goto/16 :goto_0

    :cond_18
    const-string v1, "gw_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 981
    const v0, 0x7f0800f2

    .line 982
    goto/16 :goto_0

    :cond_19
    const-string v1, "gw_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 983
    const v0, 0x7f0800f0

    .line 984
    goto/16 :goto_0

    :cond_1a
    const-string v1, "hc_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 985
    const v0, 0x7f0800e9

    .line 986
    goto/16 :goto_0

    :cond_1b
    const-string v1, "hc_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 987
    const v0, 0x7f0800eb

    .line 988
    goto/16 :goto_0

    :cond_1c
    const-string v1, "hc_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 989
    const v0, 0x7f0800ec

    .line 990
    goto/16 :goto_0

    :cond_1d
    const-string v1, "hc_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 991
    const v0, 0x7f0800ea

    .line 992
    goto/16 :goto_0

    :cond_1e
    const-string v1, "kjtq_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 994
    const-string v1, "kjtq_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 996
    const-string v1, "ld_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 997
    const v0, 0x7f0800ff

    .line 998
    goto/16 :goto_0

    :cond_1f
    const-string v1, "ld_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 999
    const v0, 0x7f080100

    .line 1000
    goto/16 :goto_0

    :cond_20
    const-string v1, "ld_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1001
    const v0, 0x7f0800fe

    .line 1002
    goto/16 :goto_0

    :cond_21
    const-string v1, "m_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1003
    const v0, 0x7f0800fc

    .line 1004
    goto/16 :goto_0

    :cond_22
    const-string v1, "m_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1005
    const v0, 0x7f0800fb

    .line 1006
    goto/16 :goto_0

    :cond_23
    const-string v1, "m_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1007
    const v0, 0x7f0800fd

    .line 1008
    goto/16 :goto_0

    :cond_24
    const-string v1, "scb_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1009
    const v0, 0x7f0800ee

    .line 1010
    goto/16 :goto_0

    :cond_25
    const-string v1, "scb_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1011
    const v0, 0x7f0800ef

    .line 1012
    goto/16 :goto_0

    :cond_26
    const-string v1, "scb_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1013
    const v0, 0x7f0800ed

    .line 1014
    goto/16 :goto_0

    :cond_27
    const-string v1, "sd_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1015
    const v0, 0x7f0800f5

    .line 1016
    goto/16 :goto_0

    :cond_28
    const-string v1, "sd_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1017
    const v0, 0x7f0800f7

    .line 1018
    goto/16 :goto_0

    :cond_29
    const-string v1, "sd_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1019
    const v0, 0x7f0800f6

    .line 1020
    goto/16 :goto_0

    :cond_2a
    const-string v1, "tf_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1021
    const v0, 0x7f0800dd

    .line 1022
    goto/16 :goto_0

    :cond_2b
    const-string v1, "tf_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1023
    const v0, 0x7f0800df

    .line 1024
    goto/16 :goto_0

    :cond_2c
    const-string v1, "tf_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1025
    const v0, 0x7f0800e0

    .line 1026
    goto/16 :goto_0

    :cond_2d
    const-string v1, "tf_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const v0, 0x7f0800de

    goto/16 :goto_0
.end method

.method public static getTemperaturnVoiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "tMin"
    .parameter "tMax"

    .prologue
    const/4 v8, 0x2

    .line 616
    const/4 v5, 0x0

    .line 617
    .local v5, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 618
    .local v4, minStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 619
    .local v2, maxStr:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 620
    .local v3, min:I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 622
    .local v1, max:I
    if-gez v3, :cond_0

    .line 623
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x32

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 634
    :goto_0
    if-gez v1, :cond_2

    .line 635
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x32

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 644
    :goto_1
    const v6, 0x7f08012e

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 645
    return-object v5

    .line 625
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 626
    .local v0, len:I
    if-ge v0, v8, :cond_1

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 628
    goto :goto_0

    .line 629
    :cond_1
    move-object v4, p1

    goto :goto_0

    .line 637
    .end local v0           #len:I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 638
    .restart local v0       #len:I
    if-ge v0, v8, :cond_3

    .line 639
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    goto :goto_1

    .line 641
    :cond_3
    move-object v2, p2

    goto :goto_1
.end method

.method public static final getWarningImageId(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 815
    const v0, 0x7f020083

    .line 816
    .local v0, id:I
    const-string v1, "bb_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    const v0, 0x7f020083

    .line 916
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    const-string v1, "bb_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    const v0, 0x7f020084

    .line 820
    goto :goto_0

    :cond_2
    const-string v1, "bb_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 821
    const v0, 0x7f020085

    .line 822
    goto :goto_0

    :cond_3
    const-string v1, "by_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    const v0, 0x7f02008a

    .line 824
    goto :goto_0

    :cond_4
    const-string v1, "by_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 825
    const v0, 0x7f02008b

    .line 826
    goto :goto_0

    :cond_5
    const-string v1, "by_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 827
    const v0, 0x7f02008c

    .line 828
    goto :goto_0

    :cond_6
    const-string v1, "by_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 829
    const v0, 0x7f02008d

    .line 830
    goto :goto_0

    :cond_7
    const-string v1, "bx_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 831
    const v0, 0x7f020086

    .line 832
    goto :goto_0

    :cond_8
    const-string v1, "bx_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 833
    const v0, 0x7f020087

    .line 834
    goto :goto_0

    :cond_9
    const-string v1, "bx_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 835
    const v0, 0x7f020088

    .line 836
    goto :goto_0

    :cond_a
    const-string v1, "bx_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 837
    const v0, 0x7f020089

    .line 838
    goto :goto_0

    :cond_b
    const-string v1, "df_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 839
    const v0, 0x7f02008e

    .line 840
    goto/16 :goto_0

    :cond_c
    const-string v1, "df_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 841
    const v0, 0x7f02008f

    .line 842
    goto/16 :goto_0

    :cond_d
    const-string v1, "df_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 843
    const v0, 0x7f020090

    .line 844
    goto/16 :goto_0

    :cond_e
    const-string v1, "df_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 845
    const v0, 0x7f020091

    .line 846
    goto/16 :goto_0

    :cond_f
    const-string v1, "dljb_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 847
    const v0, 0x7f020092

    .line 848
    goto/16 :goto_0

    :cond_10
    const-string v1, "dljb_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 849
    const v0, 0x7f020093

    .line 850
    goto/16 :goto_0

    :cond_11
    const-string v1, "dljb_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 851
    const v0, 0x7f020094

    .line 852
    goto/16 :goto_0

    :cond_12
    const-string v1, "dw_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 853
    const v0, 0x7f020095

    .line 854
    goto/16 :goto_0

    :cond_13
    const-string v1, "dw_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 855
    const v0, 0x7f020096

    .line 856
    goto/16 :goto_0

    :cond_14
    const-string v1, "dw_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 857
    const v0, 0x7f020097

    .line 858
    goto/16 :goto_0

    :cond_15
    const-string v1, "dw_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 859
    const v0, 0x7f020098

    .line 860
    goto/16 :goto_0

    :cond_16
    const-string v1, "gh_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 861
    const v0, 0x7f020099

    .line 862
    goto/16 :goto_0

    :cond_17
    const-string v1, "gh_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 863
    const v0, 0x7f02009a

    .line 864
    goto/16 :goto_0

    :cond_18
    const-string v1, "gw_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 865
    const v0, 0x7f02009b

    .line 866
    goto/16 :goto_0

    :cond_19
    const-string v1, "gw_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 867
    const v0, 0x7f02009c

    .line 868
    goto/16 :goto_0

    :cond_1a
    const-string v1, "gw_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 869
    const v0, 0x7f02009d

    .line 870
    goto/16 :goto_0

    :cond_1b
    const-string v1, "hc_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 871
    const v0, 0x7f02009e

    .line 872
    goto/16 :goto_0

    :cond_1c
    const-string v1, "hc_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 873
    const v0, 0x7f02009f

    .line 874
    goto/16 :goto_0

    :cond_1d
    const-string v1, "hc_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 875
    const v0, 0x7f0200a0

    .line 876
    goto/16 :goto_0

    :cond_1e
    const-string v1, "hc_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 877
    const v0, 0x7f0200a1

    .line 878
    goto/16 :goto_0

    :cond_1f
    const-string v1, "kjtq_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 879
    const v0, 0x7f0200a2

    .line 880
    goto/16 :goto_0

    :cond_20
    const-string v1, "kjtq_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 881
    const v0, 0x7f0200a3

    .line 882
    goto/16 :goto_0

    :cond_21
    const-string v1, "ld_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 883
    const v0, 0x7f0200a4

    .line 884
    goto/16 :goto_0

    :cond_22
    const-string v1, "ld_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 885
    const v0, 0x7f0200a5

    .line 886
    goto/16 :goto_0

    :cond_23
    const-string v1, "ld_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 887
    const v0, 0x7f0200a6

    .line 888
    goto/16 :goto_0

    :cond_24
    const-string v1, "m_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 889
    const v0, 0x7f0200a7

    .line 890
    goto/16 :goto_0

    :cond_25
    const-string v1, "m_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 891
    const v0, 0x7f0200a9

    .line 892
    goto/16 :goto_0

    :cond_26
    const-string v1, "m_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 893
    const v0, 0x7f0200a8

    .line 894
    goto/16 :goto_0

    :cond_27
    const-string v1, "scb_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 895
    const v0, 0x7f0200aa

    .line 896
    goto/16 :goto_0

    :cond_28
    const-string v1, "scb_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 897
    const v0, 0x7f0200ab

    .line 898
    goto/16 :goto_0

    :cond_29
    const-string v1, "scb_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 899
    const v0, 0x7f0200ac

    .line 900
    goto/16 :goto_0

    :cond_2a
    const-string v1, "sd_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 901
    const v0, 0x7f0200ad

    .line 902
    goto/16 :goto_0

    :cond_2b
    const-string v1, "sd_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 903
    const v0, 0x7f0200ae

    .line 904
    goto/16 :goto_0

    :cond_2c
    const-string v1, "sd_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 905
    const v0, 0x7f0200af

    .line 906
    goto/16 :goto_0

    :cond_2d
    const-string v1, "tf_b"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 907
    const v0, 0x7f0200b0

    .line 908
    goto/16 :goto_0

    :cond_2e
    const-string v1, "tf_o"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 909
    const v0, 0x7f0200b1

    .line 910
    goto/16 :goto_0

    :cond_2f
    const-string v1, "tf_r"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 911
    const v0, 0x7f0200b2

    .line 123
    goto/16 :goto_0

    :cond_30
    const-string v1, "tf_y"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const v0, 0x7f0200b3

    goto/16 :goto_0
.end method

.method public static getWeatherVoiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "weather1"
    .parameter "weather2"

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, name:Ljava/lang/String;
    const v1, 0x7f08012b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 587
    return-object v0
.end method

.method public static getWindVoiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "windDir"
    .parameter "windPower"
    .parameter "isTurn"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, name:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 601
    const v1, 0x7f08012d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0

    .line 603
    :cond_0
    const v1, 0x7f08012c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final hasCity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "cityId"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1039
    const/4 v7, 0x0

    .line 1041
    .local v7, hasCity:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v3, "cityId=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1042
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1043
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1044
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v7, v8

    .line 1045
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_0
    return v7

    :cond_1
    move v7, v9

    .line 1044
    goto :goto_0
.end method

.method public static isChinese(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, language:Ljava/lang/String;
    const-string v1, "ZTE-setName"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "language = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    :cond_0
    const/4 v1, 0x1

    .line 754
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isDefault(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "cityId"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1058
    const/4 v8, 0x1

    .line 1059
    .local v8, isDefault:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "cityId"

    aput-object v3, v2, v9

    const-string v3, "isDefault=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1060
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1061
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1063
    .local v7, id:Ljava/lang/String;
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    const/4 v8, 0x1

    .line 1071
    .end local v7           #id:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_0
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_1

    .line 1075
    const-string v0, "hasDefault"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDefault = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_1
    return v8

    .line 1066
    .restart local v7       #id:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .line 1068
    goto :goto_0

    .line 1069
    .end local v7           #id:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static isGuanFang(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 219
    const v1, 0x7f08011e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, channel:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    :cond_0
    const-string v1, "guanfang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 161
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v3

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 166
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 168
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 169
    const/4 v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNight()Z
    .locals 5

    .prologue
    .line 731
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 732
    .local v0, current_date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 734
    .local v1, hours:I
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 735
    const-string v2, "isNight"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hours = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNubia(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 232
    const v1, 0x7f08011e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, channel:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x0

    .line 236
    :goto_0
    return v1

    :cond_0
    const-string v1, "nubia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isZTE(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 211
    const v1, 0x7f08011e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, channel:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    :cond_0
    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static parseVideo(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/VideoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 384
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/VideoModel;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 386
    .local v5, xmlFactory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 387
    .local v3, saxParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 388
    .local v6, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/hf/utils/VideoHandler;

    invoke-direct {v1, p0}, Lcom/hf/utils/VideoHandler;-><init>(Landroid/content/Context;)V

    .line 389
    .local v1, handler:Lcom/hf/utils/VideoHandler;
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 390
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 391
    .local v4, source:Lorg/xml/sax/InputSource;
    invoke-interface {v6, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 393
    invoke-virtual {v1}, Lcom/hf/utils/VideoHandler;->getVideoList()Ljava/util/List;

    move-result-object v2

    .line 395
    sget-boolean v7, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v7, :cond_0

    .line 396
    if-eqz v2, :cond_0

    .line 397
    const-string v7, "VideoHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "list.size = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 409
    .end local v1           #handler:Lcom/hf/utils/VideoHandler;
    .end local v3           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v4           #source:Lorg/xml/sax/InputSource;
    .end local v6           #xmlReader:Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    return-object v2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 405
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 406
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 407
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseWarning(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_0

    .line 332
    const-string v8, "HFWeather"

    const-string v9, "parseWarning"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 336
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-nez p1, :cond_1

    move-object v2, v1

    .line 360
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    :goto_0
    return-object v2

    .line 339
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 341
    .local v6, xmlFactory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 342
    .local v3, saxParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 343
    .local v7, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v5, Lcom/hf/utils/WarningHandler;

    invoke-direct {v5}, Lcom/hf/utils/WarningHandler;-><init>()V

    .line 344
    .local v5, warningHandler:Lcom/hf/utils/WarningHandler;
    invoke-interface {v7, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 345
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 346
    .local v4, source:Lorg/xml/sax/InputSource;
    invoke-interface {v7, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 348
    invoke-virtual {v5}, Lcom/hf/utils/WarningHandler;->getList()Ljava/util/List;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .end local v3           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v4           #source:Lorg/xml/sax/InputSource;
    .end local v5           #warningHandler:Lcom/hf/utils/WarningHandler;
    .end local v7           #xmlReader:Lorg/xml/sax/XMLReader;
    :goto_1
    move-object v2, v1

    .line 360
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    goto :goto_0

    .line 349
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 351
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 352
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 353
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 354
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 355
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_1
.end method

.method public static parseWeatherFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/hf/model/WeatherModel;
    .locals 2
    .parameter "context"
    .parameter "stream"
    .parameter "cityID"

    .prologue
    .line 321
    new-instance v0, Lcom/hf/parser/WeatherParser;

    invoke-direct {v0, p0, p2}, Lcom/hf/parser/WeatherParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    .local v0, parser:Lcom/hf/parser/WeatherParser;
    invoke-virtual {v0, p1}, Lcom/hf/parser/WeatherParser;->parseWeatherFile(Ljava/io/InputStream;)Lcom/hf/model/WeatherModel;

    move-result-object v1

    .line 323
    .local v1, weather:Lcom/hf/model/WeatherModel;
    return-object v1
.end method

.method public static readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 372
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 379
    :goto_0
    return-object v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "hf-exception"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 375
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "hf-exception"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final setRootViewBackground(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 505
    new-instance v0, Lcom/hf/utils/Util$1;

    invoke-direct {v0, p1, p0}, Lcom/hf/utils/Util$1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 542
    invoke-virtual {v0, v1}, Lcom/hf/utils/Util$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 543
    return-void
.end method

.method public static writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "stream"
    .parameter "fileName"

    .prologue
    .line 249
    sget-boolean v5, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v5, :cond_0

    .line 250
    const-string v5, "parseWeatherFile"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "filename = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    const/4 v4, 0x0

    .line 255
    .local v4, isSuccess:Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 257
    .local v2, fileStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, i:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 260
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 261
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 263
    const/4 v4, 0x1

    .line 273
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    :goto_1
    return v4

    .line 258
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 265
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    :catch_0
    move-exception v1

    .line 266
    .local v1, e1:Ljava/io/FileNotFoundException;
    const-string v5, "Exception-file"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 267
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, e:Ljava/io/IOException;
    const-string v5, "Exception-file"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 269
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Exception-file"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
