.class public Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;
.super Ljava/lang/Object;


# instance fields
.field public Date:Lcom/autonavi/xm/navigation/server/GDate;

.field public Time:Lcom/autonavi/xm/navigation/server/GTime;

.field public coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public lAdminCode:I

.field public nAngle:S

.field public nIndex:I

.field public nSpeed:S

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iput-short v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iput-short v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Lcom/autonavi/xm/navigation/server/GDate;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    int-to-byte v1, v1

    int-to-short v1, v1

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {v0, v1, v3, v4}, Lcom/autonavi/xm/navigation/server/GDate;-><init>(SBB)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GTime;

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2}, Ljava/util/Date;->getSeconds()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {v0, v1, v3, v2}, Lcom/autonavi/xm/navigation/server/GTime;-><init>(BBB)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/xm/navigation/server/GCoord;SSLjava/lang/String;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    invoke-static {p3}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-short p5, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iput-short p6, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/xm/navigation/server/safe/GSafeCategory;Lcom/autonavi/xm/navigation/server/GCoord;SSLjava/lang/String;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-short p5, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iput-short p6, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method


# virtual methods
.method public CategoryToType()I
    .locals 2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x26

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x28

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x1c -> :sswitch_0
        0x1d -> :sswitch_4
    .end sparse-switch
.end method

.method public TypeToCategory(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clone()Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/GCoord;->clone()Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/GDate;->clone()Lcom/autonavi/xm/navigation/server/GDate;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iget v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->clone()Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    move-result-object v0

    return-object v0
.end method

.method public isSame(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
