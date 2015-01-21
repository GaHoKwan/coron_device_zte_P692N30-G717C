.class final Lcom/android/mms/ui/MultiForwardUtils$1;
.super Ljava/lang/Object;
.source "MultiForwardUtils.java"

# interfaces
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiForwardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachmentChanged()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 318
    return-void
.end method

.method public onMaxPendingMessagesReached()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onMessageSent()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onPreMessageSent()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public onPreMmsSent()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onProtocolChanged(ZZ)V
    .locals 0
    .parameter "mms"
    .parameter "needToast"

    .prologue
    .line 292
    return-void
.end method
