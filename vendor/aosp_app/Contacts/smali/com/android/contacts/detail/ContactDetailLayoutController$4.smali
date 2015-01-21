.class Lcom/android/contacts/detail/ContactDetailLayoutController$4;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentPageChange(Landroid/app/ActionBar;I)V
    .locals 0
    .parameter "actionBar"
    .parameter "index"

    .prologue
    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1028
    :cond_0
    return-void
.end method

.method public requestScrollFragment(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1000
    :cond_0
    return-void
.end method

.method public requestScrollTab(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1007
    :cond_0
    return-void
.end method

.method public requestSwitchFragment(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 1021
    :cond_0
    return-void
.end method

.method public requestSwitchViewPager(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1014
    :cond_0
    return-void
.end method
