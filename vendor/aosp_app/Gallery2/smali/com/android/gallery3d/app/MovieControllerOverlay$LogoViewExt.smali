.class Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogoViewExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 1057
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/MovieActivity;

    const v3, 0x7f0b0097

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1059
    .local v1, movieView:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1062
    .local v0, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$502(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1063
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1064
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 1066
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 1068
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$LogoViewExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1070
    return-void
.end method
