.class Lzte/com/cn/cloudnotepad/filer/FilerActivity$4;
.super Ljava/lang/Object;
.source "FilerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/filer/FilerActivity;->createPathPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$4;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$4;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    invoke-virtual {v0, p3}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->doPathPopupWindowClick(I)V

    .line 103
    return-void
.end method
