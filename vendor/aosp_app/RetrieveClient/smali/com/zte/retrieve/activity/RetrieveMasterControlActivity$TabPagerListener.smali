.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "RetrieveMasterControlActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;-><init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 383
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 394
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    const v3, 0x7f02004b

    const/high16 v2, 0x7f02

    const/4 v1, 0x1

    .line 404
    if-nez p1, :cond_2

    .line 405
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->textColorSelected(I)V

    .line 406
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$6(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$6(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$7(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$7(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    if-ne p1, v1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->textColorSelected(I)V

    .line 415
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$7(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$7(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$6(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerListener;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$6(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
