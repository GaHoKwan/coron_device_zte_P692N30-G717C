.class Lcom/mediatek/lbs/em/LocationInfo;
.super Ljava/lang/Object;
.source "LbsMap.java"


# instance fields
.field country:Ljava/lang/String;

.field lat:D

.field lng:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 3
    .parameter "c"
    .parameter "lat"
    .parameter "lng"

    .prologue
    const-wide/16 v1, 0x0

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/em/LocationInfo;->country:Ljava/lang/String;

    .line 605
    iput-wide v1, p0, Lcom/mediatek/lbs/em/LocationInfo;->lat:D

    .line 606
    iput-wide v1, p0, Lcom/mediatek/lbs/em/LocationInfo;->lng:D

    .line 609
    iput-object p1, p0, Lcom/mediatek/lbs/em/LocationInfo;->country:Ljava/lang/String;

    .line 610
    iput-wide p2, p0, Lcom/mediatek/lbs/em/LocationInfo;->lat:D

    .line 611
    iput-wide p4, p0, Lcom/mediatek/lbs/em/LocationInfo;->lng:D

    .line 612
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationInfo country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LocationInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/lbs/em/LocationInfo;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/lbs/em/LocationInfo;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
