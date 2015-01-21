.class public Lcom/autonavi/xmgd/user/GUserSafeMaping;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.GUserSafeMaping"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapingFromLocalToServer(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)I
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static mapingFromServerToLocal(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
