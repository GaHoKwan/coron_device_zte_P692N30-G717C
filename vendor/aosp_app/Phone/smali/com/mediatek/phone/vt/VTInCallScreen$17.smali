.class Lcom/mediatek/phone/vt/VTInCallScreen$17;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;->showStartVTRecorderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3002
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3004
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3005
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3006
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2402(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3009
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3010
    .local v0, currentString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3012
    .local v1, type:I
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3015
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : voice and peer video"

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 3017
    const/4 v1, 0x1

    .line 3036
    :goto_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->startRecord(I)V
    invoke-static {v2, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2500(Lcom/mediatek/phone/vt/VTInCallScreen;I)V

    .line 3037
    :goto_1
    return-void

    .line 3018
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3021
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : only voice"

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 3023
    const/4 v1, 0x2

    goto :goto_0

    .line 3024
    :cond_2
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3027
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : only peer video"

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 3029
    const/4 v1, 0x3

    goto :goto_0

    .line 3032
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : wrong string"

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_1
.end method
