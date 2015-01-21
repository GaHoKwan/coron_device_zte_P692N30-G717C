.class Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;
.super Ljava/lang/Object;
.source "LbsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMap;


# direct methods
.method private constructor <init>(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/lbs/em/LbsMap;Lcom/mediatek/lbs/em/LbsMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;-><init>(Lcom/mediatek/lbs/em/LbsMap;)V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMap;->access$1000(Lcom/mediatek/lbs/em/LbsMap;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$JavaScriptInterface;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mRecentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMap;->access$1000(Lcom/mediatek/lbs/em/LbsMap;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 198
    #calls: Lcom/mediatek/lbs/em/LbsMap;->log(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/mediatek/lbs/em/LbsMap;->access$1100(Ljava/lang/String;)V

    .line 199
    return-void
.end method
