.class public Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_SATELLITE:I = 0xc


# instance fields
.field public nNumberOfInView:I

.field public sat:[Lcom/autonavi/xm/navigation/server/location/GSatellite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/location/GSatellite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;->nNumberOfInView:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;->sat:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    return-void
.end method
