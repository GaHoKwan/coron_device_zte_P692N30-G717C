.class Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;-><init>(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1132
    :goto_0
    return-void

    .line 1123
    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    #calls: Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->access$2(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)V

    .line 1125
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer$SlidingHandler;->this$0:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    #getter for: Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->access$3(Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    goto :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
