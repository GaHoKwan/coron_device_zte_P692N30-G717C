.class Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;
.super Ljava/lang/Object;
.source "SimInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/SimInfoSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 149
    .local v2, id:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$200(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, alertdlg:Landroid/app/AlertDialog$Builder;
    packed-switch v2, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 153
    :pswitch_0
    const v3, 0x7f0a039c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 154
    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    const/4 v4, 0x2

    const-string v5, ""

    iget-object v6, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;
    invoke-static {v6}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$000(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v6

    #calls: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->setSingleChoice(Landroid/app/AlertDialog$Builder;ILjava/lang/String;Lcom/zte/heartyservice/net/CodeNameItem;)V
    invoke-static {v3, v0, v4, v5, v6}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$300(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Landroid/app/AlertDialog$Builder;ILjava/lang/String;Lcom/zte/heartyservice/net/CodeNameItem;)V

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 162
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e013b
        :pswitch_0
    .end packed-switch
.end method
