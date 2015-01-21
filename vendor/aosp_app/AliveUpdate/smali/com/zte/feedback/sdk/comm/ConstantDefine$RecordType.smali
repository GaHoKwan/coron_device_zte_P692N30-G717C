.class public final enum Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;
.super Ljava/lang/Enum;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/sdk/comm/ConstantDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

.field public static final enum FEEDBACK:Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;


# instance fields
.field private final mTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "FEEDBACK"

    const-string v2, "feedback"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->FEEDBACK:Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    sget-object v1, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->FEEDBACK:Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->ENUM$VALUES:[Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "typeValue"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    return-object v0
.end method

.method public static values()[Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->ENUM$VALUES:[Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTypeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    return-object v0
.end method
