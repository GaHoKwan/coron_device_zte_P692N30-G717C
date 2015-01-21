.class Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
.super Ljava/lang/Object;
.source "AttachmentEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnClick"
.end annotation


# instance fields
.field private mWhat:I

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentEditor;I)V
    .locals 0
    .parameter
    .parameter "what"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p2, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    .line 232
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 235
    const-string v1, "AttachmentEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AttachmentEditor onclick: mWhat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    #getter for: Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void
.end method
