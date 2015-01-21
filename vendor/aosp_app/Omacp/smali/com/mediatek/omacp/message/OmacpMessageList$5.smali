.class final Lcom/mediatek/omacp/message/OmacpMessageList$5;
.super Ljava/lang/Object;
.source "OmacpMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageList;->markAllMessagesAsSeen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$5;->val$context:Landroid/content/Context;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->blockingMarkAllMessagesAsSeen(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$1300(Landroid/content/Context;)V

    .line 578
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$5;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 579
    return-void
.end method
