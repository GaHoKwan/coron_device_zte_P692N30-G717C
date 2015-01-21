.class public Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
.super Ljava/lang/Object;
.source "ClockCityInfo.java"


# static fields
.field public static final CITY_NAME:I = 0x3

.field public static final INDEX:I = 0x0

.field public static final TIME_ZONE:I = 0x2

.field public static final WEATHER_ID:I = 0x1


# instance fields
.field private cityName:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private weatherID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "-1"

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "weatherID"
    .parameter "timeZone"
    .parameter "cityName"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "-1"

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->timeZone:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, ret:Z
    instance-of v2, p1, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    if-eqz v2, :cond_0

    .line 129
    check-cast p1, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, cityName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 131
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    .end local v0           #cityName:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    return-object v0
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0
    .parameter "index"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->timeZone:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setWeatherID(Ljava/lang/String;)V
    .locals 0
    .parameter "weatherID"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",weatherID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timeZone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 118
    .local v0, cityArray:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->index:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 119
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->weatherID:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 120
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->timeZone:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 121
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->cityName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 122
    return-object v0
.end method
