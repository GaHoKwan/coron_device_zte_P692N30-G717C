.class public Lcom/mediatek/vcalendar/parameter/TzId;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "TzId.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    const-string v0, "TZID"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
