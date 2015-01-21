.class public Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/utils/PhoneInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeInfo"
.end annotation


# instance fields
.field public availdSize:J

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public percent()I
    .locals 6

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, percent:I
    iget-wide v2, p0, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 415
    iget-wide v2, p0, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    iget-wide v4, p0, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->availdSize:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v3, p0, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    long-to-float v3, v3

    div-float v0, v2, v3

    .line 416
    .local v0, hadused:F
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 418
    .end local v0           #hadused:F
    :cond_0
    return v1
.end method
