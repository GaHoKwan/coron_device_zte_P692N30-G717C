.class Lcom/hf/UI/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showGuideLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 455
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$9(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$9(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$10(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$10(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$10(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$11(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$11(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$11(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/hf/UI/MainActivity$7;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$12(Lcom/hf/UI/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
