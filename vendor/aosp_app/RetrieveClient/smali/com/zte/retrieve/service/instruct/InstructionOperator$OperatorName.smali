.class public abstract enum Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
.super Ljava/lang/Enum;
.source "InstructionOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "OperatorName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMCC:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

.field public static final enum CMCC_:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

.field public static final enum CN_TELECOM:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

.field public static final enum CN_UNIFORM:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 748
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$1;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CMCC:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    .line 764
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$2;

    const-string v1, "CMCC_"

    invoke-direct {v0, v1, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CMCC_:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    .line 781
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$3;

    const-string v1, "CN_UNIFORM"

    invoke-direct {v0, v1, v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CN_UNIFORM:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    .line 798
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$4;

    const-string v1, "CN_TELECOM"

    invoke-direct {v0, v1, v5}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CN_TELECOM:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    .line 747
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CMCC:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CMCC_:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CN_UNIFORM:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->CN_TELECOM:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 747
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 747
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract getCFUriString()Ljava/lang/String;
.end method

.method abstract getCancelCFUriString()Ljava/lang/String;
.end method

.method abstract getOperCode()Ljava/lang/String;
.end method
