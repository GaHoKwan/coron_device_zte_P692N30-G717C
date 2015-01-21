.class public Lcom/autonavi/xm/navigation/server/map/GBitmap;
.super Ljava/lang/Object;


# instance fields
.field public cBPP:I

.field public cbxPitch:I

.field public cbyPicth:I

.field public cxWidth:I

.field public cyHeight:I

.field public eFormat:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

.field public nID:I

.field public pAlpha:[B

.field public pData:[B


# direct methods
.method public constructor <init>(IIIIIII[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbxPitch:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbyPicth:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cBPP:I

    invoke-static {p7}, Lcom/autonavi/xm/navigation/server/map/GColorFormat;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->eFormat:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:[B

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:[B

    return-void
.end method
