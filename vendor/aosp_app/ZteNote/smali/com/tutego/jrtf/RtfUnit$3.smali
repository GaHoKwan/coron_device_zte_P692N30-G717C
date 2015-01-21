.class enum Lcom/tutego/jrtf/RtfUnit$3;
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
    .line 46
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
    .line 46
    const-wide v0, 0x4096800000000000L

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method
