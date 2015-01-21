.class Lcom/mediatek/lbs/em/LbsMap$LatLng;
.super Ljava/lang/Object;
.source "LbsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LatLng"
.end annotation


# instance fields
.field public lat:D

.field public lng:D

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMap;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 385
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$LatLng;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-wide v0, p0, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lat:D

    .line 387
    iput-wide v0, p0, Lcom/mediatek/lbs/em/LbsMap$LatLng;->lng:D

    return-void
.end method
