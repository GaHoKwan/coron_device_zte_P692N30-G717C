.class final Lcom/mediatek/omacp/message/OmacpMessageNotification$1;
.super Ljava/lang/Object;
.source "OmacpMessageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isNew:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$1;->val$isNew:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$1;->val$isNew:Z

    invoke-static {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 123
    return-void
.end method
