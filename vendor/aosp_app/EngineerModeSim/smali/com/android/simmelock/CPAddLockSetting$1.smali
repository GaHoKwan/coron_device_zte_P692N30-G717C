.class Lcom/android/simmelock/CPAddLockSetting$1;
.super Ljava/lang/Object;
.source "CPAddLockSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/CPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/CPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/CPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->s1:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$000(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/simmelock/SMLCommonProcess;->limitEditText(Landroid/widget/EditText;I)V

    .line 145
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0, v3}, Lcom/android/simmelock/CPAddLockSetting;->access$202(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    const/4 v1, 0x1

    #setter for: Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z
    invoke-static {v0, v1}, Lcom/android/simmelock/CPAddLockSetting;->access$202(Lcom/android/simmelock/CPAddLockSetting;Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting$1;->this$0:Lcom/android/simmelock/CPAddLockSetting;

    #getter for: Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/simmelock/CPAddLockSetting;->access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method