.class Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;
.super Ljava/lang/Object;
.source "TestModeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/TestModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "checked"

    .prologue
    const/4 v5, 0x2

    .line 138
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mChecked:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 140
    .local v1, ischecked:Z
    if-eqz v1, :cond_3

    .line 141
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 143
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mTestModeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, val:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mTestModeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string v3, "7"

    .line 151
    :cond_1
    const/4 v2, 0x7

    .line 153
    .local v2, v:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 158
    :goto_0
    const/4 v4, 0x7

    if-le v2, v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mTestModeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    .end local v2           #v:I
    .end local v3           #val:Ljava/lang/String;
    :goto_1
    return-void

    .line 154
    .restart local v2       #v:I
    .restart local v3       #val:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TestMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #v:I
    .end local v3           #val:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 165
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
