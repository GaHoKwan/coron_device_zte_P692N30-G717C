.class public final enum Lcom/dolby/ds1appCoreUI/ConfigurationKey;
.super Ljava/lang/Enum;
.source "ConfigurationKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolby/ds1appCoreUI/ConfigurationKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dolby/ds1appCoreUI/ConfigurationKey;

.field public static final enum MAX_EDIT_GAIN:Lcom/dolby/ds1appCoreUI/ConfigurationKey;

.field public static final enum MIN_EDIT_GAIN:Lcom/dolby/ds1appCoreUI/ConfigurationKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    const-string v1, "MIN_EDIT_GAIN"

    invoke-direct {v0, v1, v2}, Lcom/dolby/ds1appCoreUI/ConfigurationKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;->MIN_EDIT_GAIN:Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    new-instance v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    const-string v1, "MAX_EDIT_GAIN"

    invoke-direct {v0, v1, v3}, Lcom/dolby/ds1appCoreUI/ConfigurationKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;->MAX_EDIT_GAIN:Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    sget-object v1, Lcom/dolby/ds1appCoreUI/ConfigurationKey;->MIN_EDIT_GAIN:Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolby/ds1appCoreUI/ConfigurationKey;->MAX_EDIT_GAIN:Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;->$VALUES:[Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolby/ds1appCoreUI/ConfigurationKey;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    return-object v0
.end method

.method public static values()[Lcom/dolby/ds1appCoreUI/ConfigurationKey;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dolby/ds1appCoreUI/ConfigurationKey;->$VALUES:[Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolby/ds1appCoreUI/ConfigurationKey;

    return-object v0
.end method
