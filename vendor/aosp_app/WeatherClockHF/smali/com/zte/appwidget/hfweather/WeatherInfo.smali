.class public Lcom/zte/appwidget/hfweather/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# instance fields
.field private cityID:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private currentConditionImg:I

.field private currentConditionText:Ljava/lang/String;

.field private currentDate:Ljava/lang/String;

.field private currentTemp:Ljava/lang/String;

.field private currentTempMax:Ljava/lang/String;

.field private currentTempMin:Ljava/lang/String;

.field private currentWeek:Ljava/lang/String;

.field private reportTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->reportTime:J

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentConditionImg:I

    .line 15
    return-void
.end method


# virtual methods
.method public getCityID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->cityID:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentConditionImg()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentConditionImg:I

    return v0
.end method

.method public getCurrentConditionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentConditionText:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTempMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentTempMax:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTempMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentTempMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentWeek:Ljava/lang/String;

    return-object v0
.end method

.method public getReportTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->reportTime:J

    return-wide v0
.end method

.method public setCityID(Ljava/lang/String;)V
    .locals 0
    .parameter "cityID"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->cityID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->cityName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setCurrentConditionImg(I)V
    .locals 0
    .parameter "currentConditionImg"

    .prologue
    .line 45
    iput p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentConditionImg:I

    .line 46
    return-void
.end method

.method public setCurrentConditionText(Ljava/lang/String;)V
    .locals 0
    .parameter "currentConditionText"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentConditionText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCurrentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "currentDate"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentDate:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCurrentTemp(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTemp"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentTemp:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCurrentTempMax(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTempMax"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentTempMax:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCurrentTempMin(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTempMin"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentTempMin:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCurrentWeek(Ljava/lang/String;)V
    .locals 0
    .parameter "currentWeek"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->currentWeek:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setReportTime(J)V
    .locals 0
    .parameter "reportTime"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zte/appwidget/hfweather/WeatherInfo;->reportTime:J

    .line 38
    return-void
.end method
