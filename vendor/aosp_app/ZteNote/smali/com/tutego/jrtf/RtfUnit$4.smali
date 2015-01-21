.class enum Lcom/tutego/jrtf/RtfUnit$4;
.super Lcom/tutego/jrtf/RtfUnit;
.source "RtfUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tutego/jrtf/RtfUnit;-><init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfUnit;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toTwips(D)I
    .locals 2
    .parameter "v"

    .prologue
    .line 49
    const-wide v0, 0x4081b73340000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
