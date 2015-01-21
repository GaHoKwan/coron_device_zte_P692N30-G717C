.class Lzte/com/cn/cloudnotepad/ui/ViewNote$1;
.super Ljava/lang/Object;
.source "ViewNote.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNote;->viewNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

.field private final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$1;->val$content:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$1;->val$content:Ljava/lang/String;

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->viewFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    return-void
.end method
