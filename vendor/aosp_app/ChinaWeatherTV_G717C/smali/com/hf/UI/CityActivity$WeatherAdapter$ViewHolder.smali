.class Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/CityActivity$WeatherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cityName:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field temText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/hf/UI/CityActivity$WeatherAdapter;

.field warningImage:Landroid/widget/ImageView;

.field wind:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/hf/UI/CityActivity$WeatherAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->this$1:Lcom/hf/UI/CityActivity$WeatherAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/CityActivity$WeatherAdapter;Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;-><init>(Lcom/hf/UI/CityActivity$WeatherAdapter;)V

    return-void
.end method
