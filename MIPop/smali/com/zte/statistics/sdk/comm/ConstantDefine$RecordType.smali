.class public final enum Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic cA:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum cx:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum cy:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum cz:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;


# instance fields
.field private final mTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cx:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cy:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "EXCEPTION"

    const-string v2, "exception"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cz:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cx:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cy:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cz:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cA:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    .locals 1

    const-class v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-object v0
.end method

.method public static values()[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->cA:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    return-object v0
.end method
