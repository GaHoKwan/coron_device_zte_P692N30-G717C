.class public Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "ViewNotePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 217
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 222
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 227
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iput p1, v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 229
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->updateSwitchView()V

    .line 230
    return-void
.end method
