.class public Lcom/autonavi/xm/navigation/server/GCoord;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/autonavi/xm/navigation/server/GCoord;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/GCoord;->clone()Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v0

    return-object v0
.end method
