.class public Ltmsdkobf/ik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static re:I

.field private static rf:I

.field private static rg:Ljava/lang/String;

.field private static rh:J

.field private static ri:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 23
    sput v2, Ltmsdkobf/ik;->re:I

    .line 28
    const/4 v0, 0x0

    sput v0, Ltmsdkobf/ik;->rf:I

    .line 33
    const-string v0, ""

    sput-object v0, Ltmsdkobf/ik;->rg:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Ltmsdkobf/ik;->rh:J

    .line 43
    sput v2, Ltmsdkobf/ik;->ri:I

    return-void
.end method

.method public static aS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 140
    sget v0, Ltmsdkobf/ik;->rf:I

    or-int/2addr v0, p0

    sput v0, Ltmsdkobf/ik;->rf:I

    .line 141
    return-void
.end method

.method public static bA()I
    .locals 1

    .prologue
    .line 151
    sget v0, Ltmsdkobf/ik;->rf:I

    return v0
.end method

.method public static cQ()I
    .locals 1

    .prologue
    .line 107
    sget v0, Ltmsdkobf/ik;->ri:I

    return v0
.end method

.method public static cR()I
    .locals 1

    .prologue
    .line 118
    sget v0, Ltmsdkobf/ik;->re:I

    return v0
.end method

.method public static cS()J
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ltmsdkobf/ik;->rh:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static cT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Ltmsdkobf/ik;->rg:Ljava/lang/String;

    return-object v0
.end method
