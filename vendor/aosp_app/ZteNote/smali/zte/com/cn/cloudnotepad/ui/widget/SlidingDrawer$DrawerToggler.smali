.class Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;-><init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1104
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    #getter for: Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->access$0(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    #getter for: Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->access$1(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$DrawerToggler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->toggle()V

    goto :goto_0
.end method
