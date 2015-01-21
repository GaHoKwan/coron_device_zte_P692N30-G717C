.class Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;
.super Ljava/lang/Object;
.source "SoftwareMoveActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, this:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;,"Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener<TT;>;"
    .local p4, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mActivity:Landroid/app/Activity;

    .line 531
    iput-object p3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mTag:Ljava/lang/String;

    .line 532
    iput-object p4, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mClass:Ljava/lang/Class;

    .line 533
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 592
    .local p0, this:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;,"Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener<TT;>;"
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 539
    .local p0, this:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;,"Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener<TT;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mFragment:Landroid/app/Fragment;

    if-nez v1, :cond_2

    .line 541
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mFragment:Landroid/app/Fragment;

    .line 542
    const v1, 0x1020002

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 549
    :goto_0
    :try_start_0
    const-string v1, "phone"

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mTag:Ljava/lang/String;

    if-ne v1, v2, :cond_3

    .line 550
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const/4 v2, 0x1

    #setter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$202(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;Z)Z

    .line 551
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$300(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 553
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$400(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$300(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0682

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 564
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$500(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$500(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createSoftwareManagerProgressDialog()V
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$600(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    .line 570
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setMenuItemEnabled(Z)V

    .line 572
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$700(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$800(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listMoveableApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_1
    :goto_2
    return-void

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 556
    :cond_3
    :try_start_1
    const-string v1, "sd card"

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mTag:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 557
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$202(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;Z)Z

    .line 558
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$300(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0133

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$400(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$300(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0682

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 584
    .local p0, this:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;,"Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener<TT;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 588
    :cond_0
    return-void
.end method
