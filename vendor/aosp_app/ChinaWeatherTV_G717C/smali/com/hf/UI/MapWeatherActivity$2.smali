.class Lcom/hf/UI/MapWeatherActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MapWeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MapWeatherActivity;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MapWeatherActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MapWeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MapWeatherActivity$2;->this$0:Lcom/hf/UI/MapWeatherActivity;

    .line 137
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.hf.QUERY_MAP"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/hf/UI/MapWeatherActivity$2;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/hf/UI/MapWeatherActivity;->access$2(Lcom/hf/UI/MapWeatherActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    :cond_0
    return-void
.end method
