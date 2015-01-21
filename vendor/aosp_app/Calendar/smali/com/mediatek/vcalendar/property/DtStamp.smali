.class public Lcom/mediatek/vcalendar/property/DtStamp;
.super Lcom/mediatek/vcalendar/property/Property;
.source "DtStamp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DtStamp"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 51
    const-string v0, "DTSTAMP"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "DtStamp"

    const-string v1, "Constructor: DTSTAMP created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
