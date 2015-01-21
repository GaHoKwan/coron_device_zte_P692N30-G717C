.class Lzte/com/cn/cloudnotepad/backup/BaseManager$4;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$4;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 89
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$4;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$4(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 92
    return-void
.end method
