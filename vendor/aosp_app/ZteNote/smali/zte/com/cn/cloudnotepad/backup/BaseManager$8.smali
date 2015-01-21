.class Lzte/com/cn/cloudnotepad/backup/BaseManager$8;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager;->showToast(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

.field private final synthetic val$duration:I

.field private final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;->val$duration:I

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 293
    return-void
.end method
