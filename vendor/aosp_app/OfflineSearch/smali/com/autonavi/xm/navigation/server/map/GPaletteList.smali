.class public Lcom/autonavi/xm/navigation/server/map/GPaletteList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfPalette:I

.field public pPalette:[Lcom/autonavi/xm/navigation/server/map/GPalette;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/map/GPalette;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GPaletteList;->nNumberOfPalette:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GPaletteList;->pPalette:[Lcom/autonavi/xm/navigation/server/map/GPalette;

    return-void
.end method
