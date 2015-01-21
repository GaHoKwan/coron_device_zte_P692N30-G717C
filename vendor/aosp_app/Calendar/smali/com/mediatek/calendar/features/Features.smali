.class public Lcom/mediatek/calendar/features/Features;
.super Ljava/lang/Object;
.source "Features.java"


# static fields
.field private static final COMMON_FEATURES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_BEAM_PLUS:I = 0x5

.field private static final FEATURE_CLEAR_ALL_EVENTS:I = 0x3

.field private static final FEATURE_THEME_MANAGER:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/calendar/features/Features;->COMMON_FEATURES:Ljava/util/ArrayList;

    .line 20
    sget-object v0, Lcom/mediatek/calendar/features/Features;->COMMON_FEATURES:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBeamPlusEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/mediatek/calendar/features/Features;->isFeatureEnabled(I)Z

    move-result v0

    return v0
.end method

.method private static isFeatureEnabled(I)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 37
    sget-object v0, Lcom/mediatek/calendar/features/Features;->COMMON_FEATURES:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isThemeManagerEnabled()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mediatek/calendar/features/Features;->isFeatureEnabled(I)Z

    move-result v0

    return v0
.end method
