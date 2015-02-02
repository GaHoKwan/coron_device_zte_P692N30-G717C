.class public Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;
.super Ljava/lang/Object;
.source "TouchScreen_PointDataStruct.java"


# instance fields
.field public action:I

.field public coordinateX:I

.field public coordinateY:I

.field public fat_size:F

.field public pid:I

.field public pressure:F

.field public time_stamp:J

.field public velocityX:F

.field public velocityY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->action:I

    .line 15
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateX:I

    .line 16
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->coordinateY:I

    .line 17
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->pressure:F

    .line 18
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->velocityX:F

    .line 19
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->velocityY:F

    .line 20
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->fat_size:F

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->time_stamp:J

    .line 6
    return-void
.end method


# virtual methods
.method public SetTimeStamp()V
    .locals 2

    .prologue
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_PointDataStruct;->time_stamp:J

    .line 10
    return-void
.end method
