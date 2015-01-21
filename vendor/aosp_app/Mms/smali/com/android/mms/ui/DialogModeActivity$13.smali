.class Lcom/android/mms/ui/DialogModeActivity$13;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->setCTSendButtonType()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$bigButtonImageId:Landroid/graphics/drawable/Drawable;

.field final synthetic val$smallButtonImageId:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3521
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$13;->val$bigButtonImageId:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/mms/ui/DialogModeActivity$13;->val$smallButtonImageId:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$1000(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$13;->val$bigButtonImageId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3524
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$1100(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$13;->val$smallButtonImageId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3525
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$1000(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v1, v1, Lcom/android/mms/ui/DialogModeActivity;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3526
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$1100(Lcom/android/mms/ui/DialogModeActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$13;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v1, v1, Lcom/android/mms/ui/DialogModeActivity;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3527
    return-void
.end method
