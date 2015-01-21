.class Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1$1;->this$2:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1244
    .local v0, id:I
    const v1, 0x7f0f01ce

    if-ne v0, v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1$1;->this$2:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->setSelectAll()V
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3600(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1251
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1246
    :cond_0
    const v1, 0x7f0f01cf

    if-ne v0, v1, :cond_1

    .line 1247
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1$1;->this$2:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->setDeselectAll()V
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3700(Lcom/android/mms/ui/MultiDeleteActivity;)V

    goto :goto_0

    .line 1249
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
