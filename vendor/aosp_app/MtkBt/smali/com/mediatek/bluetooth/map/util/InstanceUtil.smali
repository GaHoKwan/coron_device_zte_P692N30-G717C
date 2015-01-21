.class public Lcom/mediatek/bluetooth/map/util/InstanceUtil;
.super Ljava/lang/Object;
.source "InstanceUtil.java"


# static fields
.field private static index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized assignInstanceId()I
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/mediatek/bluetooth/map/util/InstanceUtil;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->index:I

    const/16 v2, 0xff

    if-lt v0, v2, :cond_0

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->index:I

    .line 48
    :cond_0
    sget v0, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->index:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->index:I

    .line 53
    return-void
.end method
