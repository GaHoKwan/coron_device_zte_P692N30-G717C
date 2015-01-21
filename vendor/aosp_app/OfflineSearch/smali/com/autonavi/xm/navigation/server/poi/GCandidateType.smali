.class public final enum Lcom/autonavi/xm/navigation/server/poi/GCandidateType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

.field public static final enum CANDIDATE_ADAREA_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

.field public static final enum CANDIDATE_CROSS_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

.field public static final enum CANDIDATE_CROSS_SPELL:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

.field public static final enum CANDIDATE_POI_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

.field public static final enum CANDIDATE_POI_SPELL:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    const-string v1, "CANDIDATE_POI_NAME"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_POI_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    const-string v1, "CANDIDATE_POI_SPELL"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_POI_SPELL:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    const-string v1, "CANDIDATE_ADAREA_NAME"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_ADAREA_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    const-string v1, "CANDIDATE_CROSS_NAME"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_CROSS_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    const-string v1, "CANDIDATE_CROSS_SPELL"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_CROSS_SPELL:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_POI_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_POI_SPELL:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_ADAREA_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_CROSS_NAME:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->CANDIDATE_CROSS_SPELL:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->$VALUES:[Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/poi/GCandidateType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/poi/GCandidateType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->$VALUES:[Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    return-object v0
.end method
