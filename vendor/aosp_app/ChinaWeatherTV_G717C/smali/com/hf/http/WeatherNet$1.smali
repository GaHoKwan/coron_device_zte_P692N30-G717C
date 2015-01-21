.class Lcom/hf/http/WeatherNet$1;
.super Ljava/util/TimerTask;
.source "WeatherNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/http/WeatherNet;->queryWeather(Ljava/lang/String;Landroid/content/Context;)Lcom/hf/model/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/http/WeatherNet;

.field private final synthetic val$get:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method constructor <init>(Lcom/hf/http/WeatherNet;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/http/WeatherNet$1;->this$0:Lcom/hf/http/WeatherNet;

    iput-object p2, p0, Lcom/hf/http/WeatherNet$1;->val$get:Lorg/apache/http/client/methods/HttpGet;

    .line 136
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hf/http/WeatherNet$1;->val$get:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 142
    return-void
.end method
