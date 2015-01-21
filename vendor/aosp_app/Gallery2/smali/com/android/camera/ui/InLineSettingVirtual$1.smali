.class Lcom/android/camera/ui/InLineSettingVirtual$1;
.super Ljava/lang/Object;
.source "InLineSettingVirtual.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingVirtual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingVirtual;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingVirtual;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 55
    const-string v0, "InLineSettingVirtual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() mShowingChildList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    #getter for: Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z
    invoke-static {v2}, Lcom/android/camera/ui/InLineSettingVirtual;->access$000(Lcom/android/camera/ui/InLineSettingVirtual;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    iget-object v2, v2, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    #getter for: Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z
    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingVirtual;->access$000(Lcom/android/camera/ui/InLineSettingVirtual;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    #getter for: Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingVirtual;->access$100(Lcom/android/camera/ui/InLineSettingVirtual;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingVirtual;->expendChild()Z

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual$1;->this$0:Lcom/android/camera/ui/InLineSettingVirtual;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingVirtual;->collapseChild()Z

    goto :goto_0
.end method
