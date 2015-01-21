.class Lcom/hf/service/NotifyReceiver$1;
.super Landroid/os/AsyncTask;
.source "NotifyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/service/NotifyReceiver;->initCityAndWeather(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCity:Lcom/hf/model/CityModel;

.field private mWeatherModel:Lcom/hf/model/WeatherModel;

.field final synthetic this$0:Lcom/hf/service/NotifyReceiver;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hf/service/NotifyReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/service/NotifyReceiver$1;->this$0:Lcom/hf/service/NotifyReceiver;

    iput-object p2, p0, Lcom/hf/service/NotifyReceiver$1;->val$context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 45
    iget-object v3, p0, Lcom/hf/service/NotifyReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 46
    .local v2, preferences:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/hf/service/NotifyReceiver$1;->val$context:Landroid/content/Context;

    const v4, 0x7f08013e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, isOpenNotify:Z
    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v6

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/hf/service/NotifyReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/hf/widget/WidgetUtil;->getCityAndWeather(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, objects:[Ljava/lang/Object;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 52
    aget-object v3, v1, v5

    check-cast v3, Lcom/hf/model/CityModel;

    iput-object v3, p0, Lcom/hf/service/NotifyReceiver$1;->mCity:Lcom/hf/model/CityModel;

    .line 53
    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Lcom/hf/model/WeatherModel;

    iput-object v3, p0, Lcom/hf/service/NotifyReceiver$1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hf/service/NotifyReceiver$1;->mCity:Lcom/hf/model/CityModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/service/NotifyReceiver$1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/hf/service/NotifyReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hf/service/NotifyReceiver$1;->mCity:Lcom/hf/model/CityModel;

    iget-object v2, p0, Lcom/hf/service/NotifyReceiver$1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    invoke-static {v0, v1, v2}, Lcom/hf/manager/WeatherNotifyManager;->showWeatherNotify(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
