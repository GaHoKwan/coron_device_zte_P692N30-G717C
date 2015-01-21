.class public final Lcom/mediatek/email/emailvip/utils/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mediatek/email/emailvip/utils/MemoryUtils;->sTotalMemorySize:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 5

    .prologue
    .line 12
    sget-wide v1, Lcom/mediatek/email/emailvip/utils/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 13
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 14
    .local v0, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 19
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    sput-wide v1, Lcom/mediatek/email/emailvip/utils/MemoryUtils;->sTotalMemorySize:J

    .line 21
    :cond_0
    sget-wide v1, Lcom/mediatek/email/emailvip/utils/MemoryUtils;->sTotalMemorySize:J

    return-wide v1
.end method
