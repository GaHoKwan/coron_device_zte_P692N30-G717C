.class Lcom/hf/service/WeatherReceiver$2;
.super Ljava/lang/Object;
.source "WeatherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/service/WeatherReceiver;->getTemperatureType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/service/WeatherReceiver;


# direct methods
.method constructor <init>(Lcom/hf/service/WeatherReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/service/WeatherReceiver$2;->this$0:Lcom/hf/service/WeatherReceiver;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver$2;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, preference:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver$2;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080134

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, value:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zte.TEMPTERATURE_TYPE_RESULT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "temperature_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver$2;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
