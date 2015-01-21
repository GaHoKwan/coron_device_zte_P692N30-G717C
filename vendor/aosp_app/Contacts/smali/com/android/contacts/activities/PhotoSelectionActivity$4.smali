.class Lcom/android/contacts/activities/PhotoSelectionActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhotoOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private capturePhotoPos()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 393
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 394
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 395
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 396
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 397
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->capturePhotoPos()V

    .line 410
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->capturePhotoPos()V

    .line 402
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    #getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->onClick(Landroid/view/View;)V

    .line 405
    :cond_0
    return-void
.end method
