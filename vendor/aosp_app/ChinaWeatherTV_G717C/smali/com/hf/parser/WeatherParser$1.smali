.class Lcom/hf/parser/WeatherParser$1;
.super Ljava/lang/Object;
.source "WeatherParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/parser/WeatherParser;->sortCFWeatherList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/hf/model/CFWeather;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/parser/WeatherParser;

.field private final synthetic val$format:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/hf/parser/WeatherParser;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/parser/WeatherParser$1;->this$0:Lcom/hf/parser/WeatherParser;

    iput-object p2, p0, Lcom/hf/parser/WeatherParser$1;->val$format:Ljava/text/SimpleDateFormat;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hf/model/CFWeather;Lcom/hf/model/CFWeather;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v2, p1, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/hf/parser/WeatherParser$1;->val$format:Ljava/text/SimpleDateFormat;

    iget-object v3, p1, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/parser/WeatherParser$1;->val$format:Ljava/text/SimpleDateFormat;

    iget-object v4, p2, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 299
    .local v0, compare:I
    goto :goto_0

    .line 300
    .end local v0           #compare:I
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/hf/model/CFWeather;

    check-cast p2, Lcom/hf/model/CFWeather;

    invoke-virtual {p0, p1, p2}, Lcom/hf/parser/WeatherParser$1;->compare(Lcom/hf/model/CFWeather;Lcom/hf/model/CFWeather;)I

    move-result v0

    return v0
.end method
