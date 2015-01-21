.class public Lcom/hf/UI/CFView;
.super Landroid/widget/RelativeLayout;
.source "CFView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDayImage:Landroid/widget/ImageView;

.field private mDayWind:Landroid/widget/ImageView;

.field private mNightImage:Landroid/widget/ImageView;

.field private mNightWind:Landroid/widget/ImageView;

.field private mResources:Landroid/content/res/Resources;

.field private mTemperature:Landroid/widget/TextView;

.field private mWeather:Lcom/hf/model/CFWeather;

.field private mWeatherText:Landroid/widget/TextView;

.field private mWeek:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hf/UI/CFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hf/UI/CFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object p1, p0, Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/hf/UI/CFView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/CFView;->mResources:Landroid/content/res/Resources;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/CFView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/CFView;)Lcom/hf/model/CFWeather;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/CFView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hf/UI/CFView;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBindView(Lcom/hf/model/CFWeather;)V
    .locals 6
    .parameter "weather"

    .prologue
    const/4 v5, 0x0

    .line 64
    iput-object p1, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    .line 66
    iget-object v1, p0, Lcom/hf/UI/CFView;->mWeek:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    invoke-static {v2, v3}, Lcom/hf/utils/WeatherUtils;->getCfWeek(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    invoke-static {v2, v3}, Lcom/hf/utils/WeatherUtils;->getCfDate(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/hf/UI/CFView;->setTemperature()V

    .line 71
    iget-object v1, p0, Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    invoke-static {v1, v2}, Lcom/hf/utils/WeatherUtils;->getCFWeatherString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, weatherString:Ljava/lang/String;
    iget-object v1, p0, Lcom/hf/UI/CFView;->mWeatherText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "night"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWeather.weatherDay = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v3, v3, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget-boolean v1, v1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDayImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v2, v2, Lcom/hf/model/CFWeather;->weatherDay:I

    invoke-static {v2, v5}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDayWind:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDayWind:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v3, v3, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    iget-object v4, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v4, v4, Lcom/hf/model/CFWeather;->windPowerDay:I

    invoke-static {v2, v3, v4}, Lcom/hf/utils/WeatherUtils;->getWindBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDayImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/hf/UI/CFView;->mNightImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v2, v2, Lcom/hf/model/CFWeather;->weatherNigth:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v1, p0, Lcom/hf/UI/CFView;->mNightWind:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/CFView;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v3, v3, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    iget-object v4, p0, Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;

    iget v4, v4, Lcom/hf/model/CFWeather;->windPowerNight:I

    invoke-static {v2, v3, v4}, Lcom/hf/utils/WeatherUtils;->getWindBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDayImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/hf/UI/CFView;->mDayWind:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mWeek:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mDate:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mTemperature:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mWeatherText:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mDayImage:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mNightImage:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mDayWind:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/hf/UI/CFView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/CFView;->mNightWind:Landroid/widget/ImageView;

    .line 57
    return-void
.end method

.method public setTemperature()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/hf/UI/CFView$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/CFView$1;-><init>(Lcom/hf/UI/CFView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v1}, Lcom/hf/UI/CFView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method
