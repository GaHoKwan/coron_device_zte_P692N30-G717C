.class public Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfItem:I

.field public pSafeInfo:[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->pSafeInfo:[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    return-void
.end method
