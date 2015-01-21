.class public Lcom/autonavi/xm/navigation/server/map/GLineObject;
.super Ljava/lang/Object;


# static fields
.field public static final LINE_TYPE_PATH_NOT_PASSED:I = 0x1

.field public static final LINE_TYPE_PATH_PASSED:I


# instance fields
.field public cType:B

.field public cTypeDt:B

.field public cZLevel:B

.field public nCount:I

.field public pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;


# direct methods
.method public constructor <init>(BBBI[Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cType:B

    iput-byte p2, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cTypeDt:B

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cZLevel:B

    iput p4, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->nCount:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    return-void
.end method
