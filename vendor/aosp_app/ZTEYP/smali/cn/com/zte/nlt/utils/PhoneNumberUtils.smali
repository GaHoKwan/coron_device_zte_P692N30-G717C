.class public Lcn/com/zte/nlt/utils/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;
    }
.end annotation


# static fields
.field private static final CITY_ZONE_3:Ljava/lang/String; = "10,20,21,22,23,24,25,27,28,29"

.field private static final CITY_ZONE_4:Ljava/lang/String; = "310,311,312,313,314,315,316,317,318,319,335,349,350,351,352,353,354,355,356,357,358,359,370,371,372,373,374,375,376,377,378,379,391,392,393,394,395,396,398,411,412,414,415,416,417,418,419,421,427,429,431,432,433,434,435,436,437,438,439,451,452,453,454,455,456,457,458,459,464,467,468,469,470,471,472,473,474,475,476,477,478,479,482,483,510,511,512,513,514,515,516,517,518,519,523,527,530,531,532,533,534,535,536,537,538,539,543,546,550,551,552,553,554,555,556,557,558,559,561,562,563,564,566,570,571,572,573,574,575,576,577,578,579,580,591,592,593,594,595,596,597,598,599,631,632,633,634,635,660,662,663,668,691,692,701,710,711,712,713,714,715,716,717,718,719,722,724,728,730,731,734,735,736,737,738,739,743,744,745,746,750,751,752,753,754,755,756,757,758,759,760,762,763,766,768,769,770,771,772,773,774,775,776,777,778,779,790,791,792,793,794,795,796,797,798,799,812,813,816,817,818,825,826,827,830,831,832,833,834,835,836,837,838,839,851,852,853,854,855,856,857,858,859,870,871,872,873,874,875,876,877,878,879,883,886,887,888,891,892,893,894,895,896,897,898,901,902,903,906,908,909,911,912,913,914,915,916,917,919,930,931,932,933,934,935,936,937,938,939,941,943,951,952,953,954,955,970,971,972,973,974,975,976,977,979,990,991,992,993,994,995,996,997,998,999"

.field private static ipPrefixs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "96688"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17901"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "17911"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->ipPrefixs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method private static checkCityZoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "newNumber"

    .prologue
    const/4 v4, 0x0

    .line 97
    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, subPrefix3:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, subPrefix4:Ljava/lang/String;
    const-string v2, "10,20,21,22,23,24,25,27,28,29"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "310,311,312,313,314,315,316,317,318,319,335,349,350,351,352,353,354,355,356,357,358,359,370,371,372,373,374,375,376,377,378,379,391,392,393,394,395,396,398,411,412,414,415,416,417,418,419,421,427,429,431,432,433,434,435,436,437,438,439,451,452,453,454,455,456,457,458,459,464,467,468,469,470,471,472,473,474,475,476,477,478,479,482,483,510,511,512,513,514,515,516,517,518,519,523,527,530,531,532,533,534,535,536,537,538,539,543,546,550,551,552,553,554,555,556,557,558,559,561,562,563,564,566,570,571,572,573,574,575,576,577,578,579,580,591,592,593,594,595,596,597,598,599,631,632,633,634,635,660,662,663,668,691,692,701,710,711,712,713,714,715,716,717,718,719,722,724,728,730,731,734,735,736,737,738,739,743,744,745,746,750,751,752,753,754,755,756,757,758,759,760,762,763,766,768,769,770,771,772,773,774,775,776,777,778,779,790,791,792,793,794,795,796,797,798,799,812,813,816,817,818,825,826,827,830,831,832,833,834,835,836,837,838,839,851,852,853,854,855,856,857,858,859,870,871,872,873,874,875,876,877,878,879,883,886,887,888,891,892,893,894,895,896,897,898,901,902,903,906,908,909,911,912,913,914,915,916,917,919,930,931,932,933,934,935,936,937,938,939,941,943,951,952,953,954,955,970,971,972,973,974,975,976,977,979,990,991,992,993,994,995,996,997,998,999"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    :cond_1
    return-object p0
.end method

.method public static filterIpPrefix(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    .local v0, resolver:Landroid/content/ContentResolver;
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ip_dial_number1"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "ip_dial_second_number1"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "ip_dial_number2"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "ip_dial_second_number2"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "ip_dial_number3"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "ip_dial_second_number3"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "ip_dial_number4"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "ip_dial_second_number4"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "ip_dial_number5"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "ip_dial_second_number5"

    aput-object v3, v2, v1

    .line 110
    .local v2, ipNumberArray:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 112
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/com/zte/nlt/NltConst;->URI_GET_VALUE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v2

    if-ge v8, v1, :cond_2

    .line 116
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, numberVal:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberVal= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 119
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 128
    .end local p1
    if-eqz v6, :cond_0

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v8           #i:I
    .end local v9           #numberVal:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 114
    .restart local v8       #i:I
    .restart local v9       #numberVal:Ljava/lang/String;
    .restart local p1
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    .end local v8           #i:I
    .end local v9           #numberVal:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 124
    :catch_0
    move-exception v7

    .line 125
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz v6, :cond_0

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 128
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getIpPrefix(Landroid/content/Context;)[Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, resolver:Landroid/content/ContentResolver;
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "ip_dial_number1"

    aput-object v1, v2, v11

    const/4 v1, 0x1

    const-string v3, "ip_dial_second_number1"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "ip_dial_number2"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "ip_dial_second_number2"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "ip_dial_number3"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "ip_dial_second_number3"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "ip_dial_number4"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "ip_dial_second_number4"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "ip_dial_number5"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "ip_dial_second_number5"

    aput-object v3, v2, v1

    .line 140
    .local v2, ipNumberArray:[Ljava/lang/String;
    array-length v1, v2

    new-array v9, v1, [Ljava/lang/String;

    .line 141
    .local v9, ipNumbers:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/com/zte/nlt/NltConst;->URI_GET_VALUE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v2

    if-ge v8, v1, :cond_0

    .line 147
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, numberVal:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberVal= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 149
    aput-object v10, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .end local v8           #i:I
    .end local v10           #numberVal:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 161
    .end local v9           #ipNumbers:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v9

    .line 153
    .restart local v9       #ipNumbers:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 154
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    if-eqz v6, :cond_2

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_2
    new-array v9, v11, [Ljava/lang/String;

    goto :goto_1

    .line 157
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getNumberPrefix(Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberPrefixInfo;
    .locals 9
    .parameter "number"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    if-nez p0, :cond_0

    .line 174
    new-instance v3, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    const-string v4, ""

    sget-object v5, Lcn/com/zte/nlt/NltConst$NumberType;->OTHER:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v3, v4, v5}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    .line 218
    :goto_0
    return-object v3

    .line 176
    :cond_0
    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    const-string v3, "0086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    new-instance v3, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/com/zte/nlt/NltConst$NumberType;->INTERNATIONAL:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v3, v4, v5}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    goto :goto_0

    .line 184
    :cond_1
    const-string v3, "0086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    new-instance v3, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    const-string v4, "86"

    sget-object v5, Lcn/com/zte/nlt/NltConst$NumberType;->INTERNATIONAL:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v3, v4, v5}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    goto :goto_0

    .line 188
    :cond_2
    const-string v3, "0086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "0086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 189
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_3
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_7

    .line 195
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    new-instance v0, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    .end local v0           #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    const-string v3, ""

    sget-object v4, Lcn/com/zte/nlt/NltConst$NumberType;->OTHER:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v0, v3, v4}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    .restart local v0       #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    :goto_1
    move-object v3, v0

    .line 218
    goto/16 :goto_0

    .line 198
    :cond_4
    const-string v3, "010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    new-instance v0, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    .end local v0           #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    const-string v3, "10"

    sget-object v4, Lcn/com/zte/nlt/NltConst$NumberType;->PHONE:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v0, v3, v4}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    .restart local v0       #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    goto :goto_1

    .line 203
    :cond_5
    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, prefix:Ljava/lang/String;
    :goto_2
    new-instance v0, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    .end local v0           #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    sget-object v3, Lcn/com/zte/nlt/NltConst$NumberType;->PHONE:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v0, v1, v3}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    .restart local v0       #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    goto :goto_1

    .line 206
    .end local v1           #prefix:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_2

    .line 210
    .end local v1           #prefix:Ljava/lang/String;
    :cond_7
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 212
    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    .restart local v1       #prefix:Ljava/lang/String;
    new-instance v0, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    .end local v0           #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    sget-object v3, Lcn/com/zte/nlt/NltConst$NumberType;->CELL_PHONE:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v0, v1, v3}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    .restart local v0       #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    goto :goto_1

    .line 216
    .end local v1           #prefix:Ljava/lang/String;
    :cond_8
    new-instance v0, Lcn/com/zte/nlt/module/NumberPrefixInfo;

    .end local v0           #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    const-string v3, ""

    sget-object v4, Lcn/com/zte/nlt/NltConst$NumberType;->OTHER:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-direct {v0, v3, v4}, Lcn/com/zte/nlt/module/NumberPrefixInfo;-><init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V

    .restart local v0       #npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    goto :goto_1
.end method

.method public static needToQuery(Ljava/lang/String;Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;Ljava/lang/String;)Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;
    .locals 2
    .parameter "orgNumber"
    .parameter "prefix"
    .parameter "type"
    .parameter "lastQueryPrefix"

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 233
    .local v0, prefixLen:I
    sget-object v1, Lcn/com/zte/nlt/NltConst$NumberType;->INTERNATIONAL:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne p2, v1, :cond_0

    .line 234
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    .line 276
    :goto_0
    return-object v1

    .line 237
    :cond_0
    sget-object v1, Lcn/com/zte/nlt/NltConst$NumberType;->OTHER:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne p2, v1, :cond_1

    .line 238
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 242
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->CLEAR_RESULT:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :cond_3
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_NOT_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 250
    :cond_4
    sget-object v1, Lcn/com/zte/nlt/NltConst$NumberType;->CELL_PHONE:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne p2, v1, :cond_7

    .line 251
    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 253
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 255
    :cond_5
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->CLEAR_RESULT:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 258
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 259
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 264
    :cond_7
    sget-object v1, Lcn/com/zte/nlt/NltConst$NumberType;->PHONE:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne p2, v1, :cond_9

    const-string v1, "01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 266
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->NUM_ERROR:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 268
    :cond_8
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->CLEAR_RESULT:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 273
    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 274
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_NOT_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0

    .line 276
    :cond_a
    sget-object v1, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->DO_QUERY:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    goto :goto_0
.end method

.method public static replaceChinaNationalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    .end local p0
    :goto_0
    return-object p0

    .line 66
    .restart local p0
    :cond_0
    move-object v0, p0

    .line 67
    .local v0, newNumber:Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->checkCityZoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPrefix.process number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    move-object p0, v0

    .line 75
    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "0086"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->checkCityZoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static replaceInvalidNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-object p0

    :cond_0
    const-string v0, "(?:/| |-|\\(|\\))"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 35
    .restart local p0
    :cond_1
    sget-object v0, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->ipPrefixs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 36
    .local v2, ip:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static replaceUSAPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    .end local p0
    :goto_0
    return-object p0

    .line 88
    .restart local p0
    :cond_0
    move-object v0, p0

    .line 89
    .local v0, newNumber:Ljava/lang/String;
    const-string v1, "00186"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 90
    const-string v1, "00186"

    const-string v2, "0086"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPrefix.process number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    move-object p0, v0

    .line 93
    goto :goto_0
.end method
