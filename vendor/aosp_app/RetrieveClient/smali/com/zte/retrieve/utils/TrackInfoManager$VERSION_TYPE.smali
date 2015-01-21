.class public final enum Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;
.super Ljava/lang/Enum;
.source "TrackInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/utils/TrackInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VERSION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOUD:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

.field public static final enum LOCAL:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->LOCAL:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    .line 30
    new-instance v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    const-string v1, "CLOUD"

    invoke-direct {v0, v1, v3}, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->CLOUD:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    sget-object v1, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->LOCAL:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->CLOUD:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->ENUM$VALUES:[Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->ENUM$VALUES:[Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
