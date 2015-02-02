.class public Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;
.super Ljava/lang/Object;
.source "TouchScreen_PointStatusStruct.java"


# instance fields
.field public isDown:Z

.field public isNewLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isDown:Z

    .line 9
    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointStatusStruct;->isNewLine:Z

    .line 6
    return-void
.end method
