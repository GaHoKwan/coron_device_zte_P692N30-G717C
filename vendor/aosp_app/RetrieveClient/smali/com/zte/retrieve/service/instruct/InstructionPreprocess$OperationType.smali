.class public final enum Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;
.super Ljava/lang/Enum;
.source "InstructionPreprocess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionPreprocess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum CANCEL_CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum CANCEL_SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum ERROR:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum LOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum MAP:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum UNALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

.field public static final enum UNLOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERROR:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 60
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "LOCK"

    invoke-direct {v0, v1, v4}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->LOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 61
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "UNLOCK"

    invoke-direct {v0, v1, v5}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNLOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 62
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "ERASE"

    invoke-direct {v0, v1, v6}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 63
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v7}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->MAP:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 64
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "CALL_FORWARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 65
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "CANCEL_CALL_FORWARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 66
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "SMS_FORWARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 67
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "CANCEL_SMS_FORWARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 68
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "ALARM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 69
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "UNALARM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 70
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    const-string v1, "RESET_PASSWORD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 58
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERROR:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->LOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNLOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->MAP:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ENUM$VALUES:[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
