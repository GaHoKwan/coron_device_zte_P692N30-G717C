.class public Lcom/autonavi/xm/navigation/server/poi/GAdarea;
.super Ljava/lang/Object;


# instance fields
.field public lAdminCode:I

.field public lNumberOfSubAdarea:I

.field public pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

.field public szAdminName:Ljava/lang/String;

.field public szAdminSpell:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/poi/GAdarea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminSpell:Ljava/lang/String;

    iput p4, p0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lNumberOfSubAdarea:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    return-void
.end method
