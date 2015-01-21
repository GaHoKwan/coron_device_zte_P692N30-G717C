.class Lcom/hf/widget/HFWeatherWidget4_1$1;
.super Landroid/os/AsyncTask;
.source "HFWeatherWidget4_1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/widget/HFWeatherWidget4_1;->initCityThenUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
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
.field final synthetic this$0:Lcom/hf/widget/HFWeatherWidget4_1;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ids:[I

.field private final synthetic val$manager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/hf/widget/HFWeatherWidget4_1;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->this$0:Lcom/hf/widget/HFWeatherWidget4_1;

    iput-object p2, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$ids:[I

    .line 167
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/hf/widget/WidgetUtil;->getCityAndWeather(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, objects:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 176
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/hf/model/CityModel;

    sput-object v1, Lcom/hf/widget/HFWeatherWidget4_1;->mCity:Lcom/hf/model/CityModel;

    .line 177
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/hf/model/WeatherModel;

    sput-object v1, Lcom/hf/widget/HFWeatherWidget4_1;->mWeatherModel:Lcom/hf/model/WeatherModel;

    .line 180
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->this$0:Lcom/hf/widget/HFWeatherWidget4_1;

    iget-object v1, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/hf/widget/HFWeatherWidget4_1$1;->val$ids:[I

    #calls: Lcom/hf/widget/HFWeatherWidget4_1;->updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/hf/widget/HFWeatherWidget4_1;->access$0(Lcom/hf/widget/HFWeatherWidget4_1;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 186
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method
