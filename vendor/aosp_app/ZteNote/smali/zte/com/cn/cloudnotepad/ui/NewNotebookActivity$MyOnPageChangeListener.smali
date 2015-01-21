.class public Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "NewNotebookActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$MyOnPageChangeListener;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 260
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 266
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 271
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$MyOnPageChangeListener;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->initViewPager(I)V

    .line 272
    return-void
.end method
