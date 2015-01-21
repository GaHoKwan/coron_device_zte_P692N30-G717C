.class Lcom/hf/UI/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->setAsDefaultCity(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$oldCity:Lcom/hf/model/CityModel;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$10;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$10;->val$oldCity:Lcom/hf/model/CityModel;

    iput-object p3, p0, Lcom/hf/UI/MainActivity$10;->val$city:Lcom/hf/model/CityModel;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 615
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "isDefault"

    .line 617
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 616
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    iget-object v2, p0, Lcom/hf/UI/MainActivity$10;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v2}, Lcom/hf/UI/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 619
    sget-object v3, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    .line 621
    const-string v4, "cityId=\'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    .line 622
    sget-object v6, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    iget-object v6, v6, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 621
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-virtual {v2, v3, v1, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 623
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 624
    const-string v2, "isDefault"

    .line 625
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 624
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    iget-object v2, p0, Lcom/hf/UI/MainActivity$10;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v2}, Lcom/hf/UI/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 627
    sget-object v3, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    .line 629
    const-string v4, "cityId=\'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    .line 630
    iget-object v6, p0, Lcom/hf/UI/MainActivity$10;->val$oldCity:Lcom/hf/model/CityModel;

    iget-object v6, v6, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 629
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 626
    invoke-virtual {v2, v3, v1, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 631
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v2, "cityID"

    iget-object v3, p0, Lcom/hf/UI/MainActivity$10;->val$city:Lcom/hf/model/CityModel;

    iget-object v3, v3, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    iget-object v2, p0, Lcom/hf/UI/MainActivity$10;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v2, v0}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    return-void
.end method
