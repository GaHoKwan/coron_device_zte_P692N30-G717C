.class public Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfDemoModel:I

.field public pDemoModel:[Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;

.field public szAdminName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;->szAdminName:Ljava/lang/String;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;->nNumberOfDemoModel:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;->pDemoModel:[Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;

    return-void
.end method
