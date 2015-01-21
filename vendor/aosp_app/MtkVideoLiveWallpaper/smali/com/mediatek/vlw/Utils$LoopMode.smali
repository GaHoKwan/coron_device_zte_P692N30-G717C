.class public final enum Lcom/mediatek/vlw/Utils$LoopMode;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoopMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/vlw/Utils$LoopMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/vlw/Utils$LoopMode;

.field public static final enum ALL:Lcom/mediatek/vlw/Utils$LoopMode;

.field public static final enum RANDOM:Lcom/mediatek/vlw/Utils$LoopMode;

.field public static final enum SINGLE:Lcom/mediatek/vlw/Utils$LoopMode;


# instance fields
.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    new-instance v0, Lcom/mediatek/vlw/Utils$LoopMode;

    const-string v1, "RANDOM"

    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/vlw/Utils$LoopMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/vlw/Utils$LoopMode;->RANDOM:Lcom/mediatek/vlw/Utils$LoopMode;

    new-instance v0, Lcom/mediatek/vlw/Utils$LoopMode;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/vlw/Utils$LoopMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/vlw/Utils$LoopMode;->SINGLE:Lcom/mediatek/vlw/Utils$LoopMode;

    new-instance v0, Lcom/mediatek/vlw/Utils$LoopMode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/vlw/Utils$LoopMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/vlw/Utils$LoopMode;->ALL:Lcom/mediatek/vlw/Utils$LoopMode;

    .line 384
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/vlw/Utils$LoopMode;

    sget-object v1, Lcom/mediatek/vlw/Utils$LoopMode;->RANDOM:Lcom/mediatek/vlw/Utils$LoopMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/vlw/Utils$LoopMode;->SINGLE:Lcom/mediatek/vlw/Utils$LoopMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/vlw/Utils$LoopMode;->ALL:Lcom/mediatek/vlw/Utils$LoopMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/vlw/Utils$LoopMode;->$VALUES:[Lcom/mediatek/vlw/Utils$LoopMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 390
    iput p3, p0, Lcom/mediatek/vlw/Utils$LoopMode;->mMode:I

    .line 391
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/vlw/Utils$LoopMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 384
    const-class v0, Lcom/mediatek/vlw/Utils$LoopMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vlw/Utils$LoopMode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/vlw/Utils$LoopMode;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/mediatek/vlw/Utils$LoopMode;->$VALUES:[Lcom/mediatek/vlw/Utils$LoopMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/vlw/Utils$LoopMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/mediatek/vlw/Utils$LoopMode;->mMode:I

    return v0
.end method
