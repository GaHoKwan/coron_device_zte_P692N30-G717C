.class Lcom/android/mms/ui/AttachmentEditor$1;
.super Ljava/lang/Object;
.source "AttachmentEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$100(Lcom/android/mms/ui/AttachmentEditor;)Landroid/widget/ImageButton;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$200(Lcom/android/mms/ui/AttachmentEditor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I
    invoke-static {v3}, Lcom/android/mms/ui/AttachmentEditor;->access$300(Lcom/android/mms/ui/AttachmentEditor;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 782
    .local v1, sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v3, v3

    #setter for: Lcom/android/mms/ui/AttachmentEditor;->send_sim_id:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/AttachmentEditor;->access$402(Lcom/android/mms/ui/AttachmentEditor;I)I

    .line 788
    .end local v1           #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->send_sim_id:I
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$400(Lcom/android/mms/ui/AttachmentEditor;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 790
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 791
    return-void

    .line 783
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$500(Lcom/android/mms/ui/AttachmentEditor;)Landroid/widget/ImageButton;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 784
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$200(Lcom/android/mms/ui/AttachmentEditor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I
    invoke-static {v3}, Lcom/android/mms/ui/AttachmentEditor;->access$300(Lcom/android/mms/ui/AttachmentEditor;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 786
    .restart local v1       #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v3, v3

    #setter for: Lcom/android/mms/ui/AttachmentEditor;->send_sim_id:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/AttachmentEditor;->access$402(Lcom/android/mms/ui/AttachmentEditor;I)I

    goto :goto_0
.end method
