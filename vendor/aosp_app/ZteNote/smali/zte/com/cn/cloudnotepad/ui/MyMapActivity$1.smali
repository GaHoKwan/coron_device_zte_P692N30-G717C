.class Lzte/com/cn/cloudnotepad/ui/MyMapActivity$1;
.super Ljava/lang/Object;
.source "MyMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/MyMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->onActionBarItemSelected(I)Z
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;I)Z

    .line 166
    return-void
.end method
