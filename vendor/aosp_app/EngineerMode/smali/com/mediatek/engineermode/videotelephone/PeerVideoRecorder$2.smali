.class Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$2;
.super Ljava/lang/Object;
.source "PeerVideoRecorder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$2;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$2;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mFormat:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->access$102(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/VideoTelephony"

    const-string v1, "noting selected."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
