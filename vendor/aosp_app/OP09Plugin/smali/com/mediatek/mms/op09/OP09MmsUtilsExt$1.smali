.class Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;
.super Ljava/lang/Object;
.source "OP09MmsUtilsExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->allowSafeDraft(Landroid/app/Activity;ZZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsUtilsExt;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsUtilsExt;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsUtilsExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;->val$str:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    return-void
.end method
