.class Lzte/com/cn/cloudnotepad/backup/BaseManager$5;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager;->createProgressDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$5;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 102
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$5;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    .line 103
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$5;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    .line 104
    return-void
.end method
