.class final enum Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;
.super Ljava/lang/Enum;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsAgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TELEPHONE_MODE_LIST"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

.field public static final enum CDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

.field public static final enum MODE_ERR:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

.field public static final enum WCDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    const-string v1, "WCDMA"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->WCDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->CDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    const-string v1, "MODE_ERR"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->MODE_ERR:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->WCDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->CDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->MODE_ERR:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->$VALUES:[Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->$VALUES:[Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    invoke-virtual {v0}, [Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    return-object v0
.end method
