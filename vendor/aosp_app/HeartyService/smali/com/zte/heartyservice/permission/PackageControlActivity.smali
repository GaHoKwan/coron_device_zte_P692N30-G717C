.class public Lcom/zte/heartyservice/permission/PackageControlActivity;
.super Landroid/app/Activity;
.source "PackageControlActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PackageControlActivity$1;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PackageControlActivity"


# instance fields
.field private groupPos:I

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ExpandableListView;

.field private listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

.field private mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

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

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    .line 57
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->set:Ljava/util/HashSet;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I

    .line 444
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/permission/PackageControlActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->set:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/permission/PackageControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/permission/PackageControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->groups:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/permission/PackageControlActivity;Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/permission/PackageControlActivity;Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/permission/PackageControlActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I

    return v0
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/permission/PackageControlActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I

    return p1
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
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 601
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$1202(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;I)I

    .line 612
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I
    invoke-static {v1}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->packageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$200(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I
    invoke-static {v3}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$1200(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 613
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 614
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    const/4 v1, 0x2

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$1202(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;I)I

    goto :goto_1

    .line 607
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$1202(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;I)I

    goto :goto_1

    .line 599
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
    .line 554
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 555
    const v0, 0x7f0300a4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->setContentView(I)V

    .line 556
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;

    .line 557
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 558
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 559
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 561
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->set:Ljava/util/HashSet;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->set:Ljava/util/HashSet;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->set:Ljava/util/HashSet;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    .line 622
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->groupPos:I

    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 595
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 568
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 574
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 575
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 576
    .local v1, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 577
    const-string v2, "notification_extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    :cond_0
    const-string v2, "PackageControlActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageControlActivity onResume package name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setLastControlMode(I)V

    .line 583
    new-instance v2, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p0, v3}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Lcom/zte/heartyservice/permission/PackageControlActivity$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 584
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 585
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 588
    :cond_1
    return-void
.end method
