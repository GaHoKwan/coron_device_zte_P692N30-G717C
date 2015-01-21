.class Lcom/android/mms/ui/ComposeMessageActivity$135;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setCTSendButtonType()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$bigButtonImageId:Landroid/graphics/drawable/Drawable;

.field final synthetic val$smallButtonImageId:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14698
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->val$bigButtonImageId:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->val$smallButtonImageId:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 14700
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->val$bigButtonImageId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14701
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->val$smallButtonImageId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14702
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14703
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$135;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14704
    return-void
.end method
