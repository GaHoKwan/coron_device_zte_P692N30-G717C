.class public final enum Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
.super Ljava/lang/Enum;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/ConstantDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum FEEDBACK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum HOST_ACTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;


# instance fields
.field private final mTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "FEEDBACK"

    const-string v2, "feedback"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->FEEDBACK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    .line 14
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "EXCEPTION"

    const-string v2, "exception"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    .line 15
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    .line 16
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "HOST_ACTION"

    const-string v2, "host_action"

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->HOST_ACTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    .line 17
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->FEEDBACK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->HOST_ACTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->ENUM$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "typeValue"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-object v0
.end method

.method public static values()[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->ENUM$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTypeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    return-object v0
.end method
