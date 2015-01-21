.class public final Lcom/mediatek/ngin3d/Ngin3d;
.super Ljava/lang/Object;
.source "Ngin3d.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_ANIMATION:Z = false

.field public static final TAG:Ljava/lang/String; = "ngin3d"

.field public static final VERSION:Ljava/lang/String; = ""

.field private static sShowFPS:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static createPresentationEngine(Lcom/mediatek/ngin3d/Stage;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    .locals 2
    .parameter "stage"

    .prologue
    .line 60
    const-string v0, "ngin3d"

    const-string v1, "ngin3d version:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "ngin3d"

    const-string v1, "ChangeId:I9c39295e8ac6ada892e7966aba790b36de486eaf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;-><init>(Lcom/mediatek/ngin3d/Stage;)V

    return-object v0
.end method

.method public static showFPS(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 71
    sput-boolean p0, Lcom/mediatek/ngin3d/Ngin3d;->sShowFPS:Z

    .line 72
    return-void
.end method

.method public static showFPS()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/mediatek/ngin3d/Ngin3d;->sShowFPS:Z

    return v0
.end method
