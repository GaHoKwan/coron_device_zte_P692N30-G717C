.class Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;
.super Lcom/mediatek/ngin3d/Transaction$Modification;
.source "BatchPropertyModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/BatchPropertyModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyModification"
.end annotation


# instance fields
.field public mProperty:Lcom/mediatek/ngin3d/Property;

.field public mTarget:Lcom/mediatek/ngin3d/Actor;

.field final synthetic this$0:Lcom/mediatek/ngin3d/BatchPropertyModification;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/BatchPropertyModification;Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;)V
    .locals 0
    .parameter
    .parameter "target"
    .parameter "property"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->this$0:Lcom/mediatek/ngin3d/BatchPropertyModification;

    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Transaction$Modification;-><init>(Lcom/mediatek/ngin3d/Transaction;)V

    .line 56
    iput-object p2, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 57
    iput-object p3, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->mProperty:Lcom/mediatek/ngin3d/Property;

    .line 58
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->touchProperty(Lcom/mediatek/ngin3d/Property;)V

    .line 64
    iget-object v1, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->this$0:Lcom/mediatek/ngin3d/BatchPropertyModification;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->this$0:Lcom/mediatek/ngin3d/BatchPropertyModification;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/ngin3d/BatchPropertyModification;->mDone:Z
    invoke-static {v0, v2}, Lcom/mediatek/ngin3d/BatchPropertyModification;->access$002(Lcom/mediatek/ngin3d/BatchPropertyModification;Z)Z

    .line 66
    iget-object v0, p0, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;->this$0:Lcom/mediatek/ngin3d/BatchPropertyModification;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
