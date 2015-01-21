.class Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;
.super Landroid/database/ContentObserver;
.source "DialerSearchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/dialpad/DialerSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataChangeObserver: mIsForeground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsForeground:Z
    invoke-static {v2}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$000(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|selfChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsForeground:Z
    invoke-static {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$000(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #calls: Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceQueryIfNeeded()V
    invoke-static {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$100(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$202(Lcom/mediatek/contacts/dialpad/DialerSearchController;Z)Z

    goto :goto_0
.end method
