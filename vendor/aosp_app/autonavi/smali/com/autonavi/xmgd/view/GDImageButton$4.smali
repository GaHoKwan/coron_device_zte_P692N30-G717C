.class Lcom/autonavi/xmgd/view/GDImageButton$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/GDImageButton;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/GDImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$000(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->selected_image:I
    invoke-static {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->access$000(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$100(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->selected_bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/autonavi/xmgd/view/GDImageButton;->access$100(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$200(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->disable_image:I
    invoke-static {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->access$200(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$300(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->disable_bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/autonavi/xmgd/view/GDImageButton;->access$300(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$400(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->command_image:I
    invoke-static {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->access$400(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$500(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/autonavi/xmgd/view/GDImageButton$4;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->command_bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/autonavi/xmgd/view/GDImageButton;->access$500(Lcom/autonavi/xmgd/view/GDImageButton;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
