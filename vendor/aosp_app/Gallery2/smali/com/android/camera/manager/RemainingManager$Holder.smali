.class Lcom/android/camera/manager/RemainingManager$Holder;
.super Ljava/lang/Object;
.source "RemainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/RemainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field mLeftSpace:J

.field mThreshold:J

.field final synthetic this$0:Lcom/android/camera/manager/RemainingManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/manager/RemainingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/camera/manager/RemainingManager$Holder;->this$0:Lcom/android/camera/manager/RemainingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/manager/RemainingManager;JJ)V
    .locals 0
    .parameter
    .parameter "threshold"
    .parameter "leftSpace"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/camera/manager/RemainingManager$Holder;->this$0:Lcom/android/camera/manager/RemainingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-wide p2, p0, Lcom/android/camera/manager/RemainingManager$Holder;->mThreshold:J

    .line 314
    iput-wide p4, p0, Lcom/android/camera/manager/RemainingManager$Holder;->mLeftSpace:J

    .line 315
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Holder(mThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/manager/RemainingManager$Holder;->mThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeftSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/manager/RemainingManager$Holder;->mLeftSpace:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
