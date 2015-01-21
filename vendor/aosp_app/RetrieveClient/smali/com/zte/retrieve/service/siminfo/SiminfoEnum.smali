.class public abstract enum Lcom/zte/retrieve/service/siminfo/SiminfoEnum;
.super Ljava/lang/Enum;
.source "SiminfoEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/service/siminfo/SiminfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

.field public static final enum MTK:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

.field public static final enum Marvell:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

.field public static final enum Others:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

.field public static final enum Qualcom:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$1;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->MTK:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    .line 19
    new-instance v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$2;

    const-string v1, "Qualcom"

    invoke-direct {v0, v1, v3}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->Qualcom:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    .line 25
    new-instance v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$3;

    const-string v1, "Marvell"

    invoke-direct {v0, v1, v4}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->Marvell:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    .line 31
    new-instance v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$4;

    const-string v1, "Others"

    invoke-direct {v0, v1, v5}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->Others:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    sget-object v1, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->MTK:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->Qualcom:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->Marvell:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->Others:Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->ENUM$VALUES:[Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/zte/retrieve/service/siminfo/SiminfoEnum;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/service/siminfo/SiminfoEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/service/siminfo/SiminfoEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;->ENUM$VALUES:[Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/service/siminfo/SiminfoEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract getSiminfo(Landroid/content/Context;)Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method
