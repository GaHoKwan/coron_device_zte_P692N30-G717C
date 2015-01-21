.class Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Lap"
.end annotation


# instance fields
.field public mLapTime:J

.field public mTotalTime:J

.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 66
    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V
    .locals 0
    .parameter
    .parameter "time"
    .parameter "total"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 71
    iput-wide p4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 72
    return-void
.end method
