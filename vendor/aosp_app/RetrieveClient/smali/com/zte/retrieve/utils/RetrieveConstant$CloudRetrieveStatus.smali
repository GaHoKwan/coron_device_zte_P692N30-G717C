.class public final enum Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;
.super Ljava/lang/Enum;
.source "RetrieveConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/utils/RetrieveConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloudRetrieveStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOUD_RETRIEVE_ACTIVE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

.field public static final enum CLOUD_RETRIEVE_INACTIVE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

.field public static final enum CLOUD_RETRIEVE_NONE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    const-string v1, "CLOUD_RETRIEVE_ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->CLOUD_RETRIEVE_ACTIVE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    .line 87
    new-instance v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    const-string v1, "CLOUD_RETRIEVE_INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->CLOUD_RETRIEVE_INACTIVE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    .line 88
    new-instance v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    const-string v1, "CLOUD_RETRIEVE_NONE"

    invoke-direct {v0, v1, v4}, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->CLOUD_RETRIEVE_NONE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    sget-object v1, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->CLOUD_RETRIEVE_ACTIVE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->CLOUD_RETRIEVE_INACTIVE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->CLOUD_RETRIEVE_NONE:Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->ENUM$VALUES:[Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;->ENUM$VALUES:[Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/utils/RetrieveConstant$CloudRetrieveStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
