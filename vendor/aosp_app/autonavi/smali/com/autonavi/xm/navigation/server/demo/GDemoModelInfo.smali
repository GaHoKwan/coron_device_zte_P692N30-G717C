.class public Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;
.super Ljava/lang/Object;


# instance fields
.field public nElevation:I

.field public nRadius:I

.field public nScaleLevel:I

.field public szModelName:Ljava/lang/String;

.field public szSPCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->szModelName:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->szSPCode:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->nScaleLevel:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->nElevation:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->nRadius:I

    return-void
.end method
