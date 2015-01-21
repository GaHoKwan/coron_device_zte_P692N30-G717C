.class public Lcom/autonavi/xm/navigation/server/location/GGyroData;
.super Ljava/lang/Object;


# instance fields
.field public Value:[I

.field public nCount:I

.field public nInterval:I

.field public nTimestamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nTimestamp:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nCount:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nInterval:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    return-void
.end method
