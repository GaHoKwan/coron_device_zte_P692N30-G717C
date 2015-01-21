.class Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;
.super Landroid/database/ContentObserver;
.source "EmailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/EmailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/EmailController;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/EmailController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    .line 247
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "onSelf"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    const-string v1, "AccountObserver:onChange"

    #calls: Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->access$000(Lcom/mediatek/bluetooth/map/EmailController;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    #getter for: Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/EmailController;->access$100(Lcom/mediatek/bluetooth/map/EmailController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/bluetooth/map/EmailController;->queryAccount(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController$AccountObserver;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    const-wide/16 v1, -0x1

    #setter for: Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/map/EmailController;->access$102(Lcom/mediatek/bluetooth/map/EmailController;J)J

    .line 256
    :cond_0
    return-void
.end method
