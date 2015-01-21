.class Lcom/mediatek/settings/MultipleSimActivity$4;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/MultipleSimActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/MultipleSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$4;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$4;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/settings/MultipleSimActivity;->access$600(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$4;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/settings/MultipleSimActivity;->access$700(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$4;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/settings/MultipleSimActivity;->access$700(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$4;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 431
    return-void
.end method
