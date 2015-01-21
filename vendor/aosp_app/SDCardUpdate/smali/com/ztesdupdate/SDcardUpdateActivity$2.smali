.class Lcom/ztesdupdate/SDcardUpdateActivity$2;
.super Ljava/lang/Object;
.source "SDcardUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ztesdupdate/SDcardUpdateActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/ztesdupdate/SDcardUpdateActivity$2;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    iput-object p2, p0, Lcom/ztesdupdate/SDcardUpdateActivity$2;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 166
    iget-object v4, p0, Lcom/ztesdupdate/SDcardUpdateActivity$2;->val$textEntryView:Landroid/view/View;

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 167
    .local v3, mCheckBox:Landroid/widget/CheckBox;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.ztesdupdate"

    const-string v6, "com.ztesdupdate.SDRise"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "data_type"

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    iget-object v4, p0, Lcom/ztesdupdate/SDcardUpdateActivity$2;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    #getter for: Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SELECT:Ljava/lang/String;
    invoke-static {v4}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$000(Lcom/ztesdupdate/SDcardUpdateActivity;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, local:Ljava/lang/String;
    const-string v4, "updateFile"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 175
    iget-object v4, p0, Lcom/ztesdupdate/SDcardUpdateActivity$2;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    iget-object v4, p0, Lcom/ztesdupdate/SDcardUpdateActivity$2;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 177
    return-void
.end method
