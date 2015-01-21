.class public Lcom/zte/heartyservice/permission/PermissionControlActivity;
.super Landroid/app/Activity;
.source "PermissionControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;,
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;,
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;,
        Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PermissionControlActivity"


# instance fields
.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ExpandableListView;

.field private listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

.field private mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

.field private mHandler:Landroid/os/Handler;

.field private mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    .line 48
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 52
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;

    .line 56
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$1;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mHandler:Landroid/os/Handler;

    .line 518
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/permission/PermissionControlActivity;Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/permission/PermissionControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->groups:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/permission/PermissionControlActivity;Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->list:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 614
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->access$1002(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;I)I

    .line 625
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPermissionCategory:I
    invoke-static {v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->access$1100(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->access$1200(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I
    invoke-static {v3}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->access$1000(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 626
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 627
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 617
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    const/4 v1, 0x2

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->access$1002(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;I)I

    goto :goto_1

    .line 620
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->access$1002(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;I)I

    goto :goto_1

    .line 612
    :pswitch_data_0
    .packed-switch 0x7f0e02d3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 582
    const v0, 0x7f0300a5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->setContentView(I)V

    .line 583
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->list:Landroid/widget/ExpandableListView;

    .line 584
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 585
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 608
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 635
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 596
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setLastControlMode(I)V

    .line 598
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;Lcom/zte/heartyservice/permission/PermissionControlActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity$LoadingAppsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 599
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 600
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 603
    :cond_0
    return-void
.end method
