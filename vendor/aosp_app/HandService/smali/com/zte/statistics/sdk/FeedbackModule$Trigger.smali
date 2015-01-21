.class final enum Lcom/zte/statistics/sdk/FeedbackModule$Trigger;
.super Ljava/lang/Enum;
.source "FeedbackModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/FeedbackModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/statistics/sdk/FeedbackModule$Trigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

.field public static final enum forced:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

.field public static final enum rating:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    const-string v1, "rating"

    invoke-direct {v0, v1, v2}, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->rating:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    .line 111
    new-instance v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    const-string v1, "forced"

    invoke-direct {v0, v1, v3}, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->forced:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    sget-object v1, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->rating:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->forced:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->ENUM$VALUES:[Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/FeedbackModule$Trigger;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    return-object v0
.end method

.method public static values()[Lcom/zte/statistics/sdk/FeedbackModule$Trigger;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->ENUM$VALUES:[Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
