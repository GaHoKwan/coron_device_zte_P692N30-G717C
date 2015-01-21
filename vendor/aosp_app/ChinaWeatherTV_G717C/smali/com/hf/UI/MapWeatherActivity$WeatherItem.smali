.class public final Lcom/hf/UI/MapWeatherActivity$WeatherItem;
.super Ljava/lang/Object;
.source "MapWeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/MapWeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WeatherItem"
.end annotation


# instance fields
.field tMax:Ljava/lang/String;

.field tMin:Ljava/lang/String;

.field final synthetic this$0:Lcom/hf/UI/MapWeatherActivity;

.field weatherDay:I

.field weatherNight:I


# direct methods
.method public constructor <init>(Lcom/hf/UI/MapWeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/hf/UI/MapWeatherActivity$WeatherItem;->this$0:Lcom/hf/UI/MapWeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
