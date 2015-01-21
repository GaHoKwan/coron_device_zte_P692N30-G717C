.class Lcom/android/email/activity/ActionBarController$DropDownListener;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropDownListener"
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ActionBarController;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p2, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->mItems:Ljava/util/ArrayList;

    .line 442
    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    const/4 v3, 0x1

    .line 444
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$200(Lcom/android/email/activity/ActionBarController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #setter for: Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/email/activity/ActionBarController;->access$302(Lcom/android/email/activity/ActionBarController;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #setter for: Lcom/android/email/activity/ActionBarController;->mTabChanged:Z
    invoke-static {v1, v3}, Lcom/android/email/activity/ActionBarController;->access$402(Lcom/android/email/activity/ActionBarController;Z)Z

    .line 447
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$600(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView$OnQueryTextListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/android/email/activity/ActionBarController;->access$500(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 448
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$DropDownListener;->this$0:Lcom/android/email/activity/ActionBarController;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/activity/ActionBarController;->mTabChanged:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/ActionBarController;->access$402(Lcom/android/email/activity/ActionBarController;Z)Z

    .line 449
    return v3
.end method
