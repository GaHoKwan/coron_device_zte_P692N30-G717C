.class Lcom/hf/UI/CityActivity$13$1;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/UI/CityActivity$13;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity$13;Ljava/lang/String;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$13$1;->this$1:Lcom/hf/UI/CityActivity$13;

    iput-object p2, p0, Lcom/hf/UI/CityActivity$13$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/hf/UI/CityActivity$13$1;->val$city:Lcom/hf/model/CityModel;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1042
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1043
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "cityDisplayName"

    iget-object v4, p0, Lcom/hf/UI/CityActivity$13$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v3, p0, Lcom/hf/UI/CityActivity$13$1;->this$1:Lcom/hf/UI/CityActivity$13;

    #getter for: Lcom/hf/UI/CityActivity$13;->this$0:Lcom/hf/UI/CityActivity;
    invoke-static {v3}, Lcom/hf/UI/CityActivity$13;->access$0(Lcom/hf/UI/CityActivity$13;)Lcom/hf/UI/CityActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hf/UI/CityActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v5, "cityId=\'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/hf/UI/CityActivity$13$1;->val$city:Lcom/hf/model/CityModel;

    iget-object v8, v8, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1045
    const-string v0, "com.hf.MODIFY_CITY_NAME"

    .line 1046
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cityID"

    iget-object v4, p0, Lcom/hf/UI/CityActivity$13$1;->val$city:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    iget-object v3, p0, Lcom/hf/UI/CityActivity$13$1;->this$1:Lcom/hf/UI/CityActivity$13;

    #getter for: Lcom/hf/UI/CityActivity$13;->this$0:Lcom/hf/UI/CityActivity;
    invoke-static {v3}, Lcom/hf/UI/CityActivity$13;->access$0(Lcom/hf/UI/CityActivity$13;)Lcom/hf/UI/CityActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hf/UI/CityActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1049
    const-string v3, "ZTE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send action:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; cityId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/CityActivity$13$1;->val$city:Lcom/hf/model/CityModel;

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void
.end method
