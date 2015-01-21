.class Lcom/mediatek/bluetooth/map/MmsConnection$3;
.super Ljava/lang/Thread;
.source "MmsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/map/MmsConnection;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MmsConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$3;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 339
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$3;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mPendingTask:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$100(Lcom/mediatek/bluetooth/map/MmsConnection;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;

    .line 340
    .local v0, task:Lcom/mediatek/bluetooth/map/MmsConnection$Task;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$3;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    iget-wide v2, v0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;->mToken:J

    iget-object v4, v0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;->mPdu:[B

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->processConnection(J[B)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$1000(Lcom/mediatek/bluetooth/map/MmsConnection;J[B)V

    .line 343
    :cond_0
    return-void
.end method
