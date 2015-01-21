.class Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;
.super Ljava/lang/Object;
.source "ScrollAndZoomExt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 145
    const-string v0, "ScrollAndZoomExt"

    const-string v1, "play next video"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$000(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mRightBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$100(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$208(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)I

    .line 149
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I
    invoke-static {v0}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$200(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    iget-object v1, p0, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog$1;->this$1:Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;

    #getter for: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->mCurrentStep:I
    invoke-static {v1}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$200(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;)I

    move-result v1

    #calls: Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->prepareVideo(I)V
    invoke-static {v0, v1}, Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;->access$300(Lcom/mediatek/appguide/plugin/camera/ScrollAndZoomExt$AppGuideDialog;I)V

    .line 152
    :cond_0
    return-void
.end method
