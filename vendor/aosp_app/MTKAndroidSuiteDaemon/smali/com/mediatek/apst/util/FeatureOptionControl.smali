.class public abstract Lcom/mediatek/apst/util/FeatureOptionControl;
.super Ljava/lang/Object;
.source "FeatureOptionControl.java"


# static fields
.field public static BACKUP_N_BACKAPP:I = 0x0

.field public static BACKUP_N_SDSWAP:I = 0x0

.field public static CONTACT_N_USIMGROUP:I = 0x0

.field public static final FEATUREOPTIONLIST:[I = null

.field public static final FEATURE_ARRAY_LENGTH:I = 0xa

.field public static MESSAGE_C_DRAFTMSGDISPLAY:I

.field public static featureArray:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 57
    new-array v0, v1, [I

    sput-object v0, Lcom/mediatek/apst/util/FeatureOptionControl;->FEATUREOPTIONLIST:[I

    .line 58
    const/16 v0, 0x20

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/mediatek/apst/util/FeatureOptionControl;->featureArray:[[I

    .line 59
    sput v2, Lcom/mediatek/apst/util/FeatureOptionControl;->BACKUP_N_BACKAPP:I

    .line 60
    sput v2, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    .line 61
    sput v2, Lcom/mediatek/apst/util/FeatureOptionControl;->MESSAGE_C_DRAFTMSGDISPLAY:I

    .line 64
    sput v2, Lcom/mediatek/apst/util/FeatureOptionControl;->BACKUP_N_SDSWAP:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureList()[I
    .locals 3

    .prologue
    .line 71
    sget v1, Lcom/mediatek/apst/util/FeatureOptionControl;->BACKUP_N_BACKAPP:I

    sget v2, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    add-int/2addr v1, v2

    .line 72
    sget v2, Lcom/mediatek/apst/util/FeatureOptionControl;->MESSAGE_C_DRAFTMSGDISPLAY:I

    .line 71
    add-int/2addr v1, v2

    .line 72
    sget v2, Lcom/mediatek/apst/util/FeatureOptionControl;->BACKUP_N_SDSWAP:I

    .line 71
    add-int v0, v1, v2

    .line 74
    .local v0, featureOption1:I
    sget-object v1, Lcom/mediatek/apst/util/FeatureOptionControl;->FEATUREOPTIONLIST:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 76
    sget-object v1, Lcom/mediatek/apst/util/FeatureOptionControl;->FEATUREOPTIONLIST:[I

    return-object v1
.end method
