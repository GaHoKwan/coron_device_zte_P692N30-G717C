.class public Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;
.super Ljava/lang/Object;


# instance fields
.field public bHasData:Z

.field public coorCenter:Lcom/autonavi/xm/navigation/server/GCoord;

.field public lAdminCode:I

.field public nNumberOfBytes:I

.field public nTel:I

.field public szCityName:Ljava/lang/String;

.field public szProvName:Ljava/lang/String;

.field public szTownName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/autonavi/xm/navigation/server/GCoord;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->lAdminCode:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    iput p5, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->nTel:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->coorCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-boolean p7, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->bHasData:Z

    iput p8, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->nNumberOfBytes:I

    return-void
.end method
