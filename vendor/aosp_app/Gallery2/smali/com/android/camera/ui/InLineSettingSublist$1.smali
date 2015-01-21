.class Lcom/android/camera/ui/InLineSettingSublist$1;
.super Ljava/lang/Object;
.source "InLineSettingSublist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingSublist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingSublist;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingSublist;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 51
    const-string v0, "InLineSettingSublist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() mShowingChildList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    iget-boolean v2, v2, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    iget-object v2, v2, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    iget-boolean v0, v0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingSublist;->expendChild()Z

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist$1;->this$0:Lcom/android/camera/ui/InLineSettingSublist;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingSublist;->collapseChild()Z

    goto :goto_0
.end method
