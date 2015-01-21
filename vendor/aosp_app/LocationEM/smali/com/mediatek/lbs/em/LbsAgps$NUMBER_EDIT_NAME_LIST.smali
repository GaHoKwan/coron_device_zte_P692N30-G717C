.class final enum Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;
.super Ljava/lang/Enum;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsAgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NUMBER_EDIT_NAME_LIST"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum AreaMaxNum:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum AreaMinInter:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum AreaStartSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum AreaStopSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum GeoLat:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum GeoLong:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum GeoRadius:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum PeriodicInter:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum PeriodicNFix:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field public static final enum PeriodicSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "PeriodicNFix"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->PeriodicNFix:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "PeriodicInter"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->PeriodicInter:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "PeriodicSTime"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->PeriodicSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "AreaMinInter"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaMinInter:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "AreaMaxNum"

    invoke-direct {v0, v1, v7}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaMaxNum:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "AreaStartSTime"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaStartSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "AreaStopSTime"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaStopSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "GeoRadius"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoRadius:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    .line 87
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "GeoLat"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoLat:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    const-string v1, "GeoLong"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoLong:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->PeriodicNFix:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->PeriodicInter:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->PeriodicSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaMinInter:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaMaxNum:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaStartSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->AreaStopSTime:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoRadius:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoLat:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoLong:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->$VALUES:[Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->$VALUES:[Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    invoke-virtual {v0}, [Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    return-object v0
.end method
