.class public final Lcom/mediatek/ngin3d/animation/Timeline$Marker;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/animation/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marker"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "time"

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->name:Ljava/lang/String;

    .line 601
    iput p2, p0, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->time:I

    .line 602
    return-void
.end method
