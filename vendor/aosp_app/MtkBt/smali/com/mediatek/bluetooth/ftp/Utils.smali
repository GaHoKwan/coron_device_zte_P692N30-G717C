.class public Lcom/mediatek/bluetooth/ftp/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final SIZE_UNITS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/ftp/Utils;->SIZE_UNITS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getPercentage(JJ)J
    .locals 3
    .parameter "p"
    .parameter "t"

    .prologue
    const-wide/16 v0, 0x0

    .line 70
    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p0

    div-long/2addr v0, p2

    goto :goto_0
.end method

.method protected static getReadableSize(J)Ljava/lang/String;
    .locals 11
    .parameter "size"

    .prologue
    const/4 v10, 0x2

    const-wide/high16 v8, 0x4090

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, idx:I
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gtz v6, :cond_0

    .line 50
    const-string v6, "0 B"

    .line 66
    :goto_0
    return-object v6

    .line 53
    :cond_0
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    .line 54
    .local v2, value1:D
    div-double v4, v2, v8

    .line 56
    .local v4, value2:D
    :goto_1
    const-wide/high16 v6, 0x3ff0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    sget-object v6, Lcom/mediatek/bluetooth/ftp/Utils;->SIZE_UNITS:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 57
    move-wide v2, v4

    .line 58
    div-double/2addr v4, v8

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 63
    .local v1, nf:Ljava/text/NumberFormat;
    invoke-virtual {v1, v10}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 64
    invoke-virtual {v1, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/bluetooth/ftp/Utils;->SIZE_UNITS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
