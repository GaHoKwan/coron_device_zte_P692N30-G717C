.class public Lcom/hf/utils/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# static fields
.field public static final NULL:Ljava/lang/String; = "--"

.field public static final SEPARATOR:Ljava/lang/String; = "/"

.field public static final UNIT_C:Ljava/lang/String; = "\u00b0C"

.field public static final UNIT_F:Ljava/lang/String; = "\u00b0F"

.field private static final UNIT_HUMIDITY:Ljava/lang/String; = "%"

.field private static final UNIT_PRESSURE:Ljava/lang/String; = "hPa"

.field private static final UNIT_WIND_SPEED:Ljava/lang/String; = "M/S"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHumidity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "humidity"

    .prologue
    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatPressure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "pressure"

    .prologue
    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "hPa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatWindSpeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 475
    const-string v3, "formatWindSpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "s = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-object v2

    .line 479
    :cond_1
    const-string v3, "(^[1-9]\\d*(\\.\\d+)?)|(0\\.\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 480
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 481
    .local v0, isNum:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "M/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "weather"
    .parameter "isC"

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    .local v1, cfTemperature:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 102
    .end local v1           #cfTemperature:Ljava/lang/String;
    .local v2, cfTemperature:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 64
    .end local v2           #cfTemperature:Ljava/lang/String;
    .restart local v1       #cfTemperature:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-boolean v3, p1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v3, :cond_3

    .line 66
    iget-object v3, p1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 67
    .end local v1           #cfTemperature:Ljava/lang/String;
    .restart local v2       #cfTemperature:Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v2           #cfTemperature:Ljava/lang/String;
    .restart local v1       #cfTemperature:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    if-eqz p2, :cond_2

    .line 73
    iget-object v3, p1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v3, "\u00b0C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v2, v1

    .line 102
    .end local v1           #cfTemperature:Ljava/lang/String;
    .restart local v2       #cfTemperature:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v2           #cfTemperature:Ljava/lang/String;
    .restart local v1       #cfTemperature:Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v3}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v3, "\u00b0F"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 81
    :cond_3
    iget-object v3, p1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v2, v1

    .line 82
    .end local v1           #cfTemperature:Ljava/lang/String;
    .restart local v2       #cfTemperature:Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v2           #cfTemperature:Ljava/lang/String;
    .restart local v1       #cfTemperature:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_6

    .line 86
    iget-object v3, p1, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 87
    const-string v4, "\u00b0C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 88
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 89
    iget-object v4, p1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 90
    const-string v4, "\u00b0C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-object v3, p1, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v3}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 94
    const-string v4, "\u00b0F"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 95
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 96
    iget-object v4, p1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    invoke-static {v4}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 97
    const-string v4, "\u00b0F"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static final getCFWeatherString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "weather"

    .prologue
    const/4 v3, -0x1

    .line 156
    const-string v0, ""

    .line 157
    .local v0, cfWeather:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 176
    .end local v0           #cfWeather:Ljava/lang/String;
    .local v1, cfWeather:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 160
    .end local v1           #cfWeather:Ljava/lang/String;
    .restart local v0       #cfWeather:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v2, :cond_2

    .line 161
    iget v2, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v2, v3, :cond_1

    move-object v1, v0

    .line 162
    .end local v0           #cfWeather:Ljava/lang/String;
    .restart local v1       #cfWeather:Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v1           #cfWeather:Ljava/lang/String;
    .restart local v0       #cfWeather:Ljava/lang/String;
    :cond_1
    iget v2, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {p0, v2}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 176
    .end local v0           #cfWeather:Ljava/lang/String;
    .restart local v1       #cfWeather:Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v1           #cfWeather:Ljava/lang/String;
    .restart local v0       #cfWeather:Ljava/lang/String;
    :cond_2
    iget v2, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/hf/model/CFWeather;->weatherDay:I

    if-ne v2, v3, :cond_4

    :cond_3
    move-object v1, v0

    .line 167
    .end local v0           #cfWeather:Ljava/lang/String;
    .restart local v1       #cfWeather:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v1           #cfWeather:Ljava/lang/String;
    .restart local v0       #cfWeather:Ljava/lang/String;
    :cond_4
    iget v2, p1, Lcom/hf/model/CFWeather;->weatherDay:I

    iget v3, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v2, v3, :cond_5

    .line 170
    iget v2, p1, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-static {p0, v2}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 171
    goto :goto_1

    .line 172
    :cond_5
    const v2, 0x7f08001a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-static {p0, v5}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {p0, v5}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static final getCFWindPower(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "code"

    .prologue
    .line 651
    const-string v0, ""

    .line 652
    .local v0, cfWind:Ljava/lang/String;
    const/4 v1, -0x1

    .line 653
    .local v1, id:I
    packed-switch p1, :pswitch_data_0

    .line 685
    const v1, 0x7f080199

    .line 688
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 689
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    :cond_0
    return-object v0

    .line 655
    :pswitch_0
    const v1, 0x7f080198

    .line 656
    goto :goto_0

    .line 658
    :pswitch_1
    const v1, 0x7f080199

    .line 659
    goto :goto_0

    .line 661
    :pswitch_2
    const v1, 0x7f08019a

    .line 662
    goto :goto_0

    .line 664
    :pswitch_3
    const v1, 0x7f08019b

    .line 665
    goto :goto_0

    .line 667
    :pswitch_4
    const v1, 0x7f08019c

    .line 668
    goto :goto_0

    .line 670
    :pswitch_5
    const v1, 0x7f08019d

    .line 671
    goto :goto_0

    .line 673
    :pswitch_6
    const v1, 0x7f08019e

    .line 674
    goto :goto_0

    .line 676
    :pswitch_7
    const v1, 0x7f08019f

    .line 677
    goto :goto_0

    .line 679
    :pswitch_8
    const v1, 0x7f0801a0

    .line 680
    goto :goto_0

    .line 682
    :pswitch_9
    const v1, 0x7f0801a1

    .line 683
    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static final getCFWindString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "weather"

    .prologue
    const v7, 0x7f08001c

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, -0x1

    .line 215
    const-string v0, ""

    .line 216
    .local v0, cfWind:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 256
    .end local v0           #cfWind:Ljava/lang/String;
    .local v1, cfWind:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 219
    .end local v1           #cfWind:Ljava/lang/String;
    .restart local v0       #cfWind:Ljava/lang/String;
    :cond_0
    const-string v3, ""

    .local v3, power:Ljava/lang/String;
    const-string v2, ""

    .line 220
    .local v2, dir:Ljava/lang/String;
    iget-boolean v5, p1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v5, :cond_4

    .line 221
    iget v5, p1, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    if-eq v5, v6, :cond_1

    .line 222
    iget v5, p1, Lcom/hf/model/CFWeather;->windPowerNight:I

    if-ne v5, v6, :cond_2

    :cond_1
    move-object v1, v0

    .line 223
    .end local v0           #cfWind:Ljava/lang/String;
    .restart local v1       #cfWind:Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v1           #cfWind:Ljava/lang/String;
    .restart local v0       #cfWind:Ljava/lang/String;
    :cond_2
    iget v5, p1, Lcom/hf/model/CFWeather;->windPowerNight:I

    if-nez v5, :cond_3

    .line 226
    iget v5, p1, Lcom/hf/model/CFWeather;->windPowerNight:I

    invoke-static {p0, v5}, Lcom/hf/utils/WeatherUtils;->getCFWindPower(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 230
    :goto_1
    iget v5, p1, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    invoke-static {p0, v5}, Lcom/hf/utils/WeatherUtils;->getWindDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 251
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 252
    move-object v0, v3

    :goto_3
    move-object v1, v0

    .line 256
    .end local v0           #cfWind:Ljava/lang/String;
    .restart local v1       #cfWind:Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v1           #cfWind:Ljava/lang/String;
    .restart local v0       #cfWind:Ljava/lang/String;
    :cond_3
    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p1, Lcom/hf/model/CFWeather;->windPowerNight:I

    invoke-static {p0, v6}, Lcom/hf/utils/WeatherUtils;->getCFWindPower(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 232
    :cond_4
    iget v5, p1, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    if-eq v5, v6, :cond_5

    .line 233
    iget v5, p1, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    if-eq v5, v6, :cond_5

    .line 234
    iget v5, p1, Lcom/hf/model/CFWeather;->windPowerDay:I

    if-eq v5, v6, :cond_5

    .line 235
    iget v5, p1, Lcom/hf/model/CFWeather;->windPowerNight:I

    if-ne v5, v6, :cond_6

    :cond_5
    move-object v1, v0

    .line 236
    .end local v0           #cfWind:Ljava/lang/String;
    .restart local v1       #cfWind:Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v1           #cfWind:Ljava/lang/String;
    .restart local v0       #cfWind:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/hf/utils/Util;->isNight()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v4, p1, Lcom/hf/model/CFWeather;->windPowerNight:I

    .line 239
    .local v4, powerCode:I
    :goto_4
    if-nez v4, :cond_8

    .line 240
    invoke-static {p0, v4}, Lcom/hf/utils/WeatherUtils;->getCFWindPower(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 245
    :goto_5
    iget v5, p1, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    iget v6, p1, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    if-ne v5, v6, :cond_9

    .line 246
    iget v5, p1, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    invoke-static {p0, v5}, Lcom/hf/utils/WeatherUtils;->getWindDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 247
    goto :goto_2

    .line 238
    .end local v4           #powerCode:I
    :cond_7
    iget v4, p1, Lcom/hf/model/CFWeather;->windPowerDay:I

    goto :goto_4

    .line 242
    .restart local v4       #powerCode:I
    :cond_8
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/hf/utils/WeatherUtils;->getCFWindPower(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 248
    :cond_9
    const v5, 0x7f08001b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p1, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    invoke-static {p0, v7}, Lcom/hf/utils/WeatherUtils;->getWindDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, p1, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    invoke-static {p0, v7}, Lcom/hf/utils/WeatherUtils;->getWindDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 254
    .end local v4           #powerCode:I
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static final getCfDate(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cfWeather"

    .prologue
    .line 373
    const-string v0, ""

    .line 374
    .local v0, date:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 378
    .end local v0           #date:Ljava/lang/String;
    .local v1, date:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 377
    .end local v1           #date:Ljava/lang/String;
    .restart local v0       #date:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v2, :cond_1

    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 378
    .end local v0           #date:Ljava/lang/String;
    .restart local v1       #date:Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v1           #date:Ljava/lang/String;
    .restart local v0       #date:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/hf/utils/Util;->formatDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getCfWeatherCode(Lcom/hf/model/CFWeather;)I
    .locals 5
    .parameter "weather"

    .prologue
    const/4 v4, -0x1

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, id:I
    if-nez p0, :cond_0

    move v1, v0

    .line 338
    .end local v0           #id:I
    .local v1, id:I
    :goto_0
    return v1

    .line 317
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_0
    invoke-static {}, Lcom/hf/utils/Util;->isNight()Z

    move-result v2

    .line 318
    .local v2, isNight:Z
    if-eqz v2, :cond_2

    .line 319
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v3, v4, :cond_1

    move v1, v0

    .line 320
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 322
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_1
    iget v0, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    :goto_1
    move v1, v0

    .line 338
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 324
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_2
    iget-boolean v3, p0, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-nez v3, :cond_4

    .line 325
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherDay:I

    if-ne v3, v4, :cond_3

    move v1, v0

    .line 326
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 328
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_3
    iget v0, p0, Lcom/hf/model/CFWeather;->weatherDay:I

    .line 329
    goto :goto_1

    .line 330
    :cond_4
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v3, v4, :cond_5

    move v1, v0

    .line 331
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 333
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_5
    iget v0, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    goto :goto_1
.end method

.method public static getCfWeatherImageId(Lcom/hf/model/CFWeather;)I
    .locals 6
    .parameter "weather"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, id:I
    if-nez p0, :cond_0

    move v1, v0

    .line 309
    .end local v0           #id:I
    .local v1, id:I
    :goto_0
    return v1

    .line 288
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_0
    invoke-static {}, Lcom/hf/utils/Util;->isNight()Z

    move-result v2

    .line 289
    .local v2, isNight:Z
    if-eqz v2, :cond_2

    .line 290
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v3, v4, :cond_1

    move v1, v0

    .line 291
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 293
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_1
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {v3, v5}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v0

    :goto_1
    move v1, v0

    .line 309
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 295
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_2
    iget-boolean v3, p0, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-nez v3, :cond_4

    .line 296
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherDay:I

    if-ne v3, v4, :cond_3

    move v1, v0

    .line 297
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 299
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_3
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherDay:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v0

    .line 300
    goto :goto_1

    .line 301
    :cond_4
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v3, v4, :cond_5

    move v1, v0

    .line 302
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 304
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_5
    iget v3, p0, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {v3, v5}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v0

    goto :goto_1
.end method

.method public static final getCfWeek(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "cfWeather"

    .prologue
    .line 348
    const-string v0, ""

    .line 349
    .local v0, week:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 363
    .end local v0           #week:Ljava/lang/String;
    .local v1, week:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 353
    .end local v1           #week:Ljava/lang/String;
    .restart local v0       #week:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v2, :cond_1

    .line 354
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 363
    .end local v0           #week:Ljava/lang/String;
    .restart local v1       #week:Ljava/lang/String;
    goto :goto_0

    .line 356
    .end local v1           #week:Ljava/lang/String;
    .restart local v0       #week:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p1, Lcom/hf/model/CFWeather;->isToday:Z

    if-eqz v2, :cond_2

    .line 357
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    goto :goto_1

    .line 359
    :cond_2
    iget v2, p1, Lcom/hf/model/CFWeather;->week:I

    invoke-static {p0, v2}, Lcom/hf/utils/Util;->formatWeek(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static final getSKReportTime(Landroid/content/Context;Lcom/hf/model/WeatherModel;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "model"

    .prologue
    .line 388
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 389
    :cond_0
    const/4 v5, 0x0

    .line 440
    :goto_0
    return-object v5

    .line 391
    :cond_1
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 392
    .local v2, formate:Ljava/text/SimpleDateFormat;
    const-string v5, "yyyy-MM-dd HH:00:00"

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, date:Ljava/util/Date;
    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 396
    :try_start_0
    iget-object v5, p1, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 403
    if-nez v0, :cond_2

    .line 404
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 432
    .restart local v0       #date:Ljava/util/Date;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 433
    .local v3, hour:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .local v4, time:Ljava/lang/StringBuffer;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 436
    const v5, 0x7f080064

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v5, "nubia-reportTime"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 397
    .end local v3           #hour:I
    .end local v4           #time:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    if-nez v0, :cond_2

    .line 404
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_1

    .line 400
    .end local v1           #e:Ljava/text/ParseException;
    :catch_1
    move-exception v5

    .line 403
    if-nez v0, :cond_2

    .line 404
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_1

    .line 402
    :catchall_0
    move-exception v5

    .line 403
    if-nez v0, :cond_3

    .line 404
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 406
    .restart local v0       #date:Ljava/util/Date;
    :cond_3
    throw v5
.end method

.method public static final getSKTemperatureString(Landroid/content/Context;Lcom/hf/model/SKWeather;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "skWeather"
    .parameter "isC"

    .prologue
    .line 41
    const-string v0, ""

    .line 42
    .local v0, skTemperature:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 49
    .end local v0           #skTemperature:Ljava/lang/String;
    .local v1, skTemperature:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 45
    .end local v1           #skTemperature:Ljava/lang/String;
    .restart local v0       #skTemperature:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u00b0C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 49
    .end local v0           #skTemperature:Ljava/lang/String;
    .restart local v1       #skTemperature:Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v1           #skTemperature:Ljava/lang/String;
    .restart local v0       #skTemperature:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    invoke-static {v3}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u00b0F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static final getSKWeatherString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cfWeather"

    .prologue
    const/4 v4, -0x1

    .line 129
    const-string v1, ""

    .line 130
    .local v1, weatherTextStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 131
    iget v3, p1, Lcom/hf/model/CFWeather;->weatherDay:I

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 146
    .end local v1           #weatherTextStr:Ljava/lang/String;
    .local v2, weatherTextStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 135
    .end local v2           #weatherTextStr:Ljava/lang/String;
    .restart local v1       #weatherTextStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/hf/utils/Util;->isNight()Z

    move-result v0

    .line 136
    .local v0, isNight:Z
    if-eqz v0, :cond_2

    .line 137
    iget v3, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {p0, v3}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 146
    .end local v1           #weatherTextStr:Ljava/lang/String;
    .restart local v2       #weatherTextStr:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v2           #weatherTextStr:Ljava/lang/String;
    .restart local v1       #weatherTextStr:Ljava/lang/String;
    :cond_2
    iget-boolean v3, p1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v3, :cond_3

    .line 140
    iget v3, p1, Lcom/hf/model/CFWeather;->weatherNigth:I

    invoke-static {p0, v3}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iget v3, p1, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-static {p0, v3}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static final getSKWeatherString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "skWeather"

    .prologue
    .line 112
    const-string v0, ""

    .line 113
    .local v0, weatherTextStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/hf/model/SKWeather;->weatherCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 119
    .end local v0           #weatherTextStr:Ljava/lang/String;
    .local v1, weatherTextStr:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 117
    .end local v1           #weatherTextStr:Ljava/lang/String;
    .restart local v0       #weatherTextStr:Ljava/lang/String;
    :cond_1
    iget v2, p1, Lcom/hf/model/SKWeather;->weatherCode:I

    invoke-static {p0, v2}, Lcom/hf/utils/WeatherUtils;->getWeather(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 119
    .end local v0           #weatherTextStr:Ljava/lang/String;
    .restart local v1       #weatherTextStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static final getSKWindPower(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "code"

    .prologue
    .line 701
    const-string v1, ""

    .line 702
    .local v1, skWindPower:Ljava/lang/String;
    const/4 v0, -0x1

    .line 703
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 736
    const v0, 0x7f0801a2

    .line 739
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 740
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    :cond_0
    return-object v1

    .line 705
    :pswitch_0
    const v0, 0x7f0801a2

    .line 706
    goto :goto_0

    .line 708
    :pswitch_1
    const v0, 0x7f0801a3

    .line 709
    goto :goto_0

    .line 711
    :pswitch_2
    const v0, 0x7f0801a4

    .line 712
    goto :goto_0

    .line 714
    :pswitch_3
    const v0, 0x7f0801a5

    .line 715
    goto :goto_0

    .line 717
    :pswitch_4
    const v0, 0x7f0801a6

    .line 718
    goto :goto_0

    .line 720
    :pswitch_5
    const v0, 0x7f0801a7

    .line 721
    goto :goto_0

    .line 723
    :pswitch_6
    const v0, 0x7f0801a8

    .line 724
    goto :goto_0

    .line 726
    :pswitch_7
    const v0, 0x7f0801a9

    .line 727
    goto :goto_0

    .line 729
    :pswitch_8
    const v0, 0x7f0801aa

    .line 730
    goto :goto_0

    .line 732
    :pswitch_9
    const v0, 0x7f0801ab

    .line 733
    goto :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getSkWeatherImageId(Lcom/hf/model/SKWeather;)I
    .locals 5
    .parameter "skWeather"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, id:I
    if-eqz p0, :cond_0

    iget v3, p0, Lcom/hf/model/SKWeather;->weatherCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    move v1, v0

    .line 275
    .end local v0           #id:I
    .local v1, id:I
    :goto_0
    return v1

    .line 269
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_1
    invoke-static {}, Lcom/hf/utils/Util;->isNight()Z

    move-result v2

    .line 270
    .local v2, isNight:Z
    if-eqz v2, :cond_2

    .line 271
    iget v3, p0, Lcom/hf/model/SKWeather;->weatherCode:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v0

    :goto_1
    move v1, v0

    .line 275
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 273
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_2
    iget v3, p0, Lcom/hf/model/SKWeather;->weatherCode:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v0

    goto :goto_1
.end method

.method public static final getSkWindString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "skWeather"

    .prologue
    const/4 v5, -0x1

    .line 186
    const-string v2, ""

    .local v2, skWind:Ljava/lang/String;
    const-string v1, ""

    .local v1, power:Ljava/lang/String;
    const-string v0, ""

    .line 187
    .local v0, dir:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 188
    iget v4, p1, Lcom/hf/model/SKWeather;->windDirCode:I

    if-eq v4, v5, :cond_0

    .line 189
    iget v4, p1, Lcom/hf/model/SKWeather;->windPowerCode:I

    if-ne v4, v5, :cond_1

    :cond_0
    move-object v3, v2

    .line 205
    .end local v2           #skWind:Ljava/lang/String;
    .local v3, skWind:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 192
    .end local v3           #skWind:Ljava/lang/String;
    .restart local v2       #skWind:Ljava/lang/String;
    :cond_1
    iget v4, p1, Lcom/hf/model/SKWeather;->windPowerCode:I

    if-nez v4, :cond_2

    .line 193
    iget v4, p1, Lcom/hf/model/SKWeather;->windPowerCode:I

    invoke-static {p0, v4}, Lcom/hf/utils/WeatherUtils;->getSKWindPower(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_1
    iget v4, p1, Lcom/hf/model/SKWeather;->windDirCode:I

    invoke-static {p0, v4}, Lcom/hf/utils/WeatherUtils;->getWindDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    move-object v2, v1

    :goto_2
    move-object v3, v2

    .line 205
    .end local v2           #skWind:Ljava/lang/String;
    .restart local v3       #skWind:Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v3           #skWind:Ljava/lang/String;
    .restart local v2       #skWind:Ljava/lang/String;
    :cond_2
    const v4, 0x7f08001c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p1, Lcom/hf/model/SKWeather;->windPowerCode:I

    invoke-static {p0, v7}, Lcom/hf/utils/WeatherUtils;->getSKWindPower(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 201
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static final getWeather(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "code"

    .prologue
    .line 520
    const-string v1, ""

    .line 521
    .local v1, weather:Ljava/lang/String;
    const/4 v0, -0x1

    .line 522
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 635
    :pswitch_0
    const v0, 0x7f080169

    .line 638
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 639
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    :cond_0
    return-object v1

    .line 524
    :pswitch_1
    const v0, 0x7f080169

    .line 525
    goto :goto_0

    .line 527
    :pswitch_2
    const v0, 0x7f08016a

    .line 528
    goto :goto_0

    .line 530
    :pswitch_3
    const v0, 0x7f08016b

    .line 531
    goto :goto_0

    .line 533
    :pswitch_4
    const v0, 0x7f08016c

    .line 534
    goto :goto_0

    .line 536
    :pswitch_5
    const v0, 0x7f08016d

    .line 537
    goto :goto_0

    .line 539
    :pswitch_6
    const v0, 0x7f08016e

    .line 540
    goto :goto_0

    .line 542
    :pswitch_7
    const v0, 0x7f08016f

    .line 543
    goto :goto_0

    .line 545
    :pswitch_8
    const v0, 0x7f080170

    .line 546
    goto :goto_0

    .line 548
    :pswitch_9
    const v0, 0x7f080171

    .line 549
    goto :goto_0

    .line 551
    :pswitch_a
    const v0, 0x7f080172

    .line 552
    goto :goto_0

    .line 554
    :pswitch_b
    const v0, 0x7f080173

    .line 555
    goto :goto_0

    .line 557
    :pswitch_c
    const v0, 0x7f080174

    .line 558
    goto :goto_0

    .line 560
    :pswitch_d
    const v0, 0x7f080175

    .line 561
    goto :goto_0

    .line 563
    :pswitch_e
    const v0, 0x7f080176

    .line 564
    goto :goto_0

    .line 566
    :pswitch_f
    const v0, 0x7f080177

    .line 567
    goto :goto_0

    .line 569
    :pswitch_10
    const v0, 0x7f080178

    .line 570
    goto :goto_0

    .line 572
    :pswitch_11
    const v0, 0x7f080179

    .line 573
    goto :goto_0

    .line 575
    :pswitch_12
    const v0, 0x7f08017a

    .line 576
    goto :goto_0

    .line 578
    :pswitch_13
    const v0, 0x7f08017b

    .line 579
    goto :goto_0

    .line 581
    :pswitch_14
    const v0, 0x7f08017c

    .line 582
    goto :goto_0

    .line 584
    :pswitch_15
    const v0, 0x7f08017d

    .line 585
    goto :goto_0

    .line 587
    :pswitch_16
    const v0, 0x7f08017e

    .line 588
    goto :goto_0

    .line 590
    :pswitch_17
    const v0, 0x7f08017f

    .line 591
    goto :goto_0

    .line 593
    :pswitch_18
    const v0, 0x7f080180

    .line 594
    goto :goto_0

    .line 596
    :pswitch_19
    const v0, 0x7f080181

    .line 597
    goto :goto_0

    .line 599
    :pswitch_1a
    const v0, 0x7f080182

    .line 600
    goto :goto_0

    .line 602
    :pswitch_1b
    const v0, 0x7f080183

    .line 603
    goto :goto_0

    .line 605
    :pswitch_1c
    const v0, 0x7f080184

    .line 606
    goto :goto_0

    .line 608
    :pswitch_1d
    const v0, 0x7f080185

    .line 609
    goto :goto_0

    .line 611
    :pswitch_1e
    const v0, 0x7f080186

    .line 612
    goto :goto_0

    .line 614
    :pswitch_1f
    const v0, 0x7f080187

    .line 615
    goto/16 :goto_0

    .line 617
    :pswitch_20
    const v0, 0x7f080188

    .line 618
    goto/16 :goto_0

    .line 620
    :pswitch_21
    const v0, 0x7f080189

    .line 621
    goto/16 :goto_0

    .line 623
    :pswitch_22
    const v0, 0x7f08018a

    .line 624
    goto/16 :goto_0

    .line 626
    :pswitch_23
    const v0, 0x7f08018b

    .line 627
    goto/16 :goto_0

    .line 629
    :pswitch_24
    const v0, 0x7f08018c

    .line 630
    goto/16 :goto_0

    .line 632
    :pswitch_25
    const v0, 0x7f08018d

    .line 633
    goto/16 :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
    .end packed-switch
.end method

.method public static final getWeatherImageId(IZ)I
    .locals 1
    .parameter "index"
    .parameter "isNight"

    .prologue
    .line 866
    const v0, 0x7f020017

    .line 867
    .local v0, id:I
    if-eqz p1, :cond_0

    .line 868
    const v0, 0x7f0200c7

    .line 871
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1076
    :goto_0
    :pswitch_0
    return v0

    .line 873
    :pswitch_1
    if-eqz p1, :cond_1

    .line 874
    const v0, 0x7f0200c8

    .line 875
    goto :goto_0

    .line 876
    :cond_1
    const v0, 0x7f020018

    .line 879
    goto :goto_0

    .line 884
    :pswitch_2
    const v0, 0x7f020019

    .line 887
    goto :goto_0

    .line 889
    :pswitch_3
    if-eqz p1, :cond_2

    .line 890
    const v0, 0x7f0200c9

    .line 891
    goto :goto_0

    .line 892
    :cond_2
    const v0, 0x7f02001a

    .line 894
    goto :goto_0

    .line 896
    :pswitch_4
    if-eqz p1, :cond_3

    .line 897
    const v0, 0x7f0200ca

    .line 898
    goto :goto_0

    .line 899
    :cond_3
    const v0, 0x7f02001b

    .line 902
    goto :goto_0

    .line 907
    :pswitch_5
    const v0, 0x7f02001c

    .line 910
    goto :goto_0

    .line 915
    :pswitch_6
    const v0, 0x7f02001d

    .line 918
    goto :goto_0

    .line 923
    :pswitch_7
    const v0, 0x7f02001e

    .line 926
    goto :goto_0

    .line 931
    :pswitch_8
    const v0, 0x7f02001f

    .line 934
    goto :goto_0

    .line 939
    :pswitch_9
    const v0, 0x7f020020

    .line 942
    goto :goto_0

    .line 944
    :pswitch_a
    const v0, 0x7f020021

    .line 945
    goto :goto_0

    .line 947
    :pswitch_b
    const v0, 0x7f020022

    .line 948
    goto :goto_0

    .line 950
    :pswitch_c
    const v0, 0x7f020022

    .line 951
    goto :goto_0

    .line 953
    :pswitch_d
    if-eqz p1, :cond_4

    .line 954
    const v0, 0x7f0200cb

    .line 955
    goto :goto_0

    .line 956
    :cond_4
    const v0, 0x7f020023

    .line 958
    goto :goto_0

    .line 960
    :pswitch_e
    const v0, 0x7f020024

    .line 961
    goto :goto_0

    .line 963
    :pswitch_f
    const v0, 0x7f020025

    .line 964
    goto :goto_0

    .line 966
    :pswitch_10
    const v0, 0x7f020026

    .line 967
    goto :goto_0

    .line 969
    :pswitch_11
    const v0, 0x7f020027

    .line 970
    goto :goto_0

    .line 972
    :pswitch_12
    const v0, 0x7f020028

    .line 973
    goto :goto_0

    .line 975
    :pswitch_13
    const v0, 0x7f020029

    .line 976
    goto :goto_0

    .line 981
    :pswitch_14
    const v0, 0x7f02002a

    .line 984
    goto :goto_0

    .line 989
    :pswitch_15
    const v0, 0x7f02001f

    .line 992
    goto :goto_0

    .line 997
    :pswitch_16
    const v0, 0x7f020020

    .line 1000
    goto :goto_0

    .line 1002
    :pswitch_17
    const v0, 0x7f020021

    .line 1003
    goto :goto_0

    .line 1005
    :pswitch_18
    const v0, 0x7f020022

    .line 1006
    goto :goto_0

    .line 1008
    :pswitch_19
    const v0, 0x7f020022

    .line 1009
    goto :goto_0

    .line 1014
    :pswitch_1a
    const v0, 0x7f020025

    .line 1017
    goto :goto_0

    .line 1019
    :pswitch_1b
    const v0, 0x7f020026

    .line 1020
    goto/16 :goto_0

    .line 1022
    :pswitch_1c
    const v0, 0x7f020027

    .line 1023
    goto/16 :goto_0

    .line 1028
    :pswitch_1d
    const v0, 0x7f02002b

    .line 1031
    goto/16 :goto_0

    .line 1036
    :pswitch_1e
    const v0, 0x7f02002c

    .line 1039
    goto/16 :goto_0

    .line 1044
    :pswitch_1f
    const v0, 0x7f02002a

    .line 1047
    goto/16 :goto_0

    .line 1049
    :pswitch_20
    if-eqz p1, :cond_5

    .line 1050
    const v0, 0x7f0200cc

    .line 1051
    goto/16 :goto_0

    .line 1052
    :cond_5
    const v0, 0x7f02002d

    .line 1055
    goto/16 :goto_0

    .line 1057
    :pswitch_21
    if-eqz p1, :cond_6

    .line 1058
    const v0, 0x7f0200cd

    .line 1059
    goto/16 :goto_0

    .line 1060
    :cond_6
    const v0, 0x7f02002e

    .line 1063
    goto/16 :goto_0

    .line 1065
    :pswitch_22
    const v0, 0x7f0200ce

    .line 1066
    goto/16 :goto_0

    .line 1068
    :pswitch_23
    const v0, 0x7f020028

    .line 1069
    goto/16 :goto_0

    .line 1071
    :pswitch_24
    const v0, 0x7f02002f

    goto/16 :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
    .end packed-switch
.end method

.method public static getWindBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "resources"
    .parameter "dir"
    .parameter "power"

    .prologue
    const/4 v1, 0x0

    .line 495
    invoke-static {p2}, Lcom/hf/utils/WeatherUtils;->getWindImageId(I)I

    move-result v8

    .line 496
    .local v8, id:I
    if-nez v8, :cond_1

    .line 497
    const/4 v10, 0x0

    .line 510
    :cond_0
    :goto_0
    return-object v10

    .line 499
    :cond_1
    invoke-static {p0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 500
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Lcom/hf/utils/WeatherUtils;->getWindDegrees(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 502
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 503
    .local v9, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 504
    .local v7, height:I
    add-int/lit8 v3, v9, -0x1

    add-int/lit8 v4, v7, -0x1

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 505
    .local v10, windBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v10, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final getWindDegrees(I)I
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    .line 796
    packed-switch p0, :pswitch_data_0

    .line 818
    :goto_0
    :pswitch_0
    return v0

    .line 800
    :pswitch_1
    const/16 v0, 0x2d

    goto :goto_0

    .line 802
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 804
    :pswitch_3
    const/16 v0, 0x87

    goto :goto_0

    .line 806
    :pswitch_4
    const/16 v0, 0xb4

    goto :goto_0

    .line 808
    :pswitch_5
    const/16 v0, -0x87

    goto :goto_0

    .line 810
    :pswitch_6
    const/16 v0, -0x5a

    goto :goto_0

    .line 812
    :pswitch_7
    const/16 v0, -0x2d

    goto :goto_0

    .line 796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final getWindDir(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "code"

    .prologue
    .line 752
    const-string v1, ""

    .line 753
    .local v1, windDir:Ljava/lang/String;
    const/4 v0, -0x1

    .line 754
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 786
    const v0, 0x7f08018e

    .line 789
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 790
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    :cond_0
    return-object v1

    .line 756
    :pswitch_0
    const v0, 0x7f08018e

    .line 757
    goto :goto_0

    .line 759
    :pswitch_1
    const v0, 0x7f08018f

    .line 760
    goto :goto_0

    .line 762
    :pswitch_2
    const v0, 0x7f080190

    .line 763
    goto :goto_0

    .line 765
    :pswitch_3
    const v0, 0x7f080191

    .line 766
    goto :goto_0

    .line 768
    :pswitch_4
    const v0, 0x7f080192

    .line 769
    goto :goto_0

    .line 771
    :pswitch_5
    const v0, 0x7f080193

    .line 772
    goto :goto_0

    .line 774
    :pswitch_6
    const v0, 0x7f080194

    .line 775
    goto :goto_0

    .line 777
    :pswitch_7
    const v0, 0x7f080195

    .line 778
    goto :goto_0

    .line 780
    :pswitch_8
    const v0, 0x7f080196

    .line 781
    goto :goto_0

    .line 783
    :pswitch_9
    const v0, 0x7f080197

    .line 784
    goto :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static final getWindImageId(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, windId:I
    packed-switch p0, :pswitch_data_0

    .line 856
    :goto_0
    return v0

    .line 827
    :pswitch_0
    const v0, 0x7f02010f

    .line 828
    goto :goto_0

    .line 830
    :pswitch_1
    const v0, 0x7f020110

    .line 831
    goto :goto_0

    .line 833
    :pswitch_2
    const v0, 0x7f020111

    .line 834
    goto :goto_0

    .line 836
    :pswitch_3
    const v0, 0x7f020112

    .line 837
    goto :goto_0

    .line 839
    :pswitch_4
    const v0, 0x7f020113

    .line 840
    goto :goto_0

    .line 842
    :pswitch_5
    const v0, 0x7f020114

    .line 843
    goto :goto_0

    .line 845
    :pswitch_6
    const v0, 0x7f02010c

    .line 846
    goto :goto_0

    .line 848
    :pswitch_7
    const v0, 0x7f02010d

    .line 849
    goto :goto_0

    .line 851
    :pswitch_8
    const/4 v0, 0x0

    .line 852
    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
