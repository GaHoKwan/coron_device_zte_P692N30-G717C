.class Lcom/android/email/activity/ActionBarController$TabListener;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$TabListener;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1208
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$TabListener;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/email/activity/ActionBarController;->access$302(Lcom/android/email/activity/ActionBarController;Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$TabListener;->this$0:Lcom/android/email/activity/ActionBarController;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/ActionBarController;->mTabChanged:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/ActionBarController;->access$402(Lcom/android/email/activity/ActionBarController;Z)Z

    .line 1199
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$TabListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$600(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView$OnQueryTextListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$TabListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$500(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1200
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$TabListener;->this$0:Lcom/android/email/activity/ActionBarController;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/ActionBarController;->mTabChanged:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/ActionBarController;->access$402(Lcom/android/email/activity/ActionBarController;Z)Z

    .line 1201
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1204
    return-void
.end method
