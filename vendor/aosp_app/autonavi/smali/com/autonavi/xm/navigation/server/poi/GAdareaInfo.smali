.class public Lcom/autonavi/xm/navigation/server/poi/GAdareaInfo;
.super Ljava/lang/Object;


# instance fields
.field public lAdminCode:I

.field public szAdminName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfo;->lAdminCode:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfo;->szAdminName:Ljava/lang/String;

    return-void
.end method
