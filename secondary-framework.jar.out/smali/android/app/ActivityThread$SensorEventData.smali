.class final Landroid/app/ActivityThread$SensorEventData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventData"
.end annotation


# instance fields
.field config:Landroid/content/res/Configuration;

.field displayId:I

.field token:Landroid/os/IBinder;

.field value:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4650
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
