.class public Lcom/mediatek/vcalendar/property/ProdId;
.super Lcom/mediatek/vcalendar/property/Property;
.source "ProdId.java"


# static fields
.field private static final PRODUCT_ID:Ljava/lang/String; = "-//SyncCalendar//archermind//EN"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "PRODID"

    const-string v1, "-//SyncCalendar//archermind//EN"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
