.class Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PermissionControlPageActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionControlPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;Lcom/mediatek/security/ui/PermissionControlPageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;-><init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 212
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 216
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 221
    invoke-static {p1}, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->fromInt(I)Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    move-result-object v0

    .line 222
    .local v0, selectedTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionControlPageActivity;->mActionBarAdapter:Lcom/mediatek/security/ui/ActionBarAdapter;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$300(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/ActionBarAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/security/ui/ActionBarAdapter;->setCurrentTab(Lcom/mediatek/security/ui/ActionBarAdapter$TabState;Z)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerListener;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #calls: Lcom/mediatek/security/ui/PermissionControlPageActivity;->updateFragmentsVisibility()V
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$400(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V

    .line 224
    return-void
.end method
