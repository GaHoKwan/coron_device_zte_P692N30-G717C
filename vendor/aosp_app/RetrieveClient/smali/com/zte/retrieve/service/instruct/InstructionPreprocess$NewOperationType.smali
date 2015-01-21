.class public final enum Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;
.super Ljava/lang/Enum;
.source "InstructionPreprocess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionPreprocess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NewOperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

.field public static final enum ztecc:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

.field public static final enum zteczmm:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

.field public static final enum ztedw:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

.field public static final enum ztesd:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

.field public static final enum ztexl:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    const-string v1, "ztesd"

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztesd:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    .line 75
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    const-string v1, "ztecc"

    invoke-direct {v0, v1, v3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztecc:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    .line 76
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    const-string v1, "ztedw"

    invoke-direct {v0, v1, v4}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztedw:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    .line 77
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    const-string v1, "ztexl"

    invoke-direct {v0, v1, v5}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztexl:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    .line 78
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    const-string v1, "zteczmm"

    invoke-direct {v0, v1, v6}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->zteczmm:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztesd:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztecc:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztedw:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ztexl:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->zteczmm:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
