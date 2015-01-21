.class public Lcom/autonavi/xm/navigation/server/map/GPalette;
.super Ljava/lang/Object;


# instance fields
.field public nPaletteID:I

.field public szPaletteName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GPalette;->nPaletteID:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GPalette;->szPaletteName:Ljava/lang/String;

    return-void
.end method
