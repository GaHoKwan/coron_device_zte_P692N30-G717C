.class Lcom/hf/location/HFLocationManager$1;
.super Ljava/lang/Object;
.source "HFLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/location/HFLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/location/HFLocationManager;


# direct methods
.method constructor <init>(Lcom/hf/location/HFLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/location/HFLocationManager$1;->this$0:Lcom/hf/location/HFLocationManager;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "LocationManager"

    const-string v1, "cancle location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/hf/location/HFLocationManager$1;->this$0:Lcom/hf/location/HFLocationManager;

    const/16 v1, 0xc9

    const/4 v2, 0x0

    #calls: Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V
    invoke-static {v0, v1, v2}, Lcom/hf/location/HFLocationManager;->access$0(Lcom/hf/location/HFLocationManager;ILcom/hf/model/CityModel;)V

    .line 59
    return-void
.end method
