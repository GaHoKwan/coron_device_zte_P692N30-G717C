.class Lcom/hf/UI/CityActivity$11;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->setCityAsDefault(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$newCityId:Ljava/lang/String;

.field private final synthetic val$oldCityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$11;->this$0:Lcom/hf/UI/CityActivity;

    iput-object p2, p0, Lcom/hf/UI/CityActivity$11;->val$oldCityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hf/UI/CityActivity$11;->val$newCityId:Ljava/lang/String;

    iput-object p4, p0, Lcom/hf/UI/CityActivity$11;->val$city:Lcom/hf/model/CityModel;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 954
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 955
    const-string v3, "showModifyDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oldCityId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hf/UI/CityActivity$11;->val$oldCityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; newCityId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/CityActivity$11;->val$newCityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 958
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "isDefault"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    iget-object v3, p0, Lcom/hf/UI/CityActivity$11;->this$0:Lcom/hf/UI/CityActivity;

    invoke-virtual {v3}, Lcom/hf/UI/CityActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v5, "cityId=\'%s\'"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/hf/UI/CityActivity$11;->val$newCityId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 960
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 961
    const-string v3, "isDefault"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    iget-object v3, p0, Lcom/hf/UI/CityActivity$11;->this$0:Lcom/hf/UI/CityActivity;

    invoke-virtual {v3}, Lcom/hf/UI/CityActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v5, "cityId=\'%s\'"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/hf/UI/CityActivity$11;->val$oldCityId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 963
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 964
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "com.hf.CHANGE_DEFAULT_CITY"

    .line 965
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-string v3, "cityID"

    iget-object v4, p0, Lcom/hf/UI/CityActivity$11;->val$city:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    iget-object v3, p0, Lcom/hf/UI/CityActivity$11;->this$0:Lcom/hf/UI/CityActivity;

    invoke-virtual {v3, v1}, Lcom/hf/UI/CityActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 968
    const-string v3, "ZTE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send action:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void
.end method
