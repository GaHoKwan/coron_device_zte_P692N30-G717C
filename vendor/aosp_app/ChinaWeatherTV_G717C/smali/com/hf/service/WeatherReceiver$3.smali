.class Lcom/hf/service/WeatherReceiver$3;
.super Ljava/lang/Object;
.source "WeatherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/service/WeatherReceiver;->getBoot()V
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
    iput-object p1, p0, Lcom/hf/service/WeatherReceiver$3;->this$0:Lcom/hf/service/WeatherReceiver;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver$3;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 163
    .local v2, preference:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver$3;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08013c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    .local v0, boot:Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zte.BOOT_SWITCH_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "zte_boot_switch"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object v3, p0, Lcom/hf/service/WeatherReceiver$3;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method
