.class public final enum Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;
.super Ljava/lang/Enum;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/ConstantDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BYAI:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

.field public static final enum ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

.field public static final enum ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    const-string v1, "ONLYBYSELF"

    invoke-direct {v0, v1, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    .line 33
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    const-string v1, "ONLYBYPROXY"

    invoke-direct {v0, v1, v3}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    .line 34
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    const-string v1, "BYAI"

    invoke-direct {v0, v1, v4}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->BYAI:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->BYAI:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ENUM$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    return-object v0
.end method

.method public static values()[Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ENUM$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
