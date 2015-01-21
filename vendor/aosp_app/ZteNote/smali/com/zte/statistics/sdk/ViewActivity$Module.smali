.class public final enum Lcom/zte/statistics/sdk/ViewActivity$Module;
.super Ljava/lang/Enum;
.source "ViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/ViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Module"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/statistics/sdk/ViewActivity$Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABOUT:Lcom/zte/statistics/sdk/ViewActivity$Module;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/statistics/sdk/ViewActivity$Module;

.field public static final enum SURVEY:Lcom/zte/statistics/sdk/ViewActivity$Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/zte/statistics/sdk/ViewActivity$Module;

    const-string v1, "ABOUT"

    invoke-direct {v0, v1, v2}, Lcom/zte/statistics/sdk/ViewActivity$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/ViewActivity$Module;->ABOUT:Lcom/zte/statistics/sdk/ViewActivity$Module;

    .line 34
    new-instance v0, Lcom/zte/statistics/sdk/ViewActivity$Module;

    const-string v1, "SURVEY"

    invoke-direct {v0, v1, v3}, Lcom/zte/statistics/sdk/ViewActivity$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/ViewActivity$Module;->SURVEY:Lcom/zte/statistics/sdk/ViewActivity$Module;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/statistics/sdk/ViewActivity$Module;

    sget-object v1, Lcom/zte/statistics/sdk/ViewActivity$Module;->ABOUT:Lcom/zte/statistics/sdk/ViewActivity$Module;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/statistics/sdk/ViewActivity$Module;->SURVEY:Lcom/zte/statistics/sdk/ViewActivity$Module;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/statistics/sdk/ViewActivity$Module;->ENUM$VALUES:[Lcom/zte/statistics/sdk/ViewActivity$Module;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/ViewActivity$Module;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/statistics/sdk/ViewActivity$Module;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/statistics/sdk/ViewActivity$Module;

    return-object v0
.end method

.method public static values()[Lcom/zte/statistics/sdk/ViewActivity$Module;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/statistics/sdk/ViewActivity$Module;->ENUM$VALUES:[Lcom/zte/statistics/sdk/ViewActivity$Module;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/statistics/sdk/ViewActivity$Module;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
