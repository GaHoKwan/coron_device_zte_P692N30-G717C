.class Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;
.super Ljava/lang/Object;
.source "CmmbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cmmb/CmmbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cmmb/CmmbActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    iput-object p2, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 89
    iget-object v4, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void

    .line 92
    :pswitch_1
    const-string v4, "cmmb_savemfsfile_key"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 95
    :pswitch_2
    const-string v4, "cmmb_savemfsfile_key"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 98
    :pswitch_3
    const-string v4, "cmmb_memsetspibuf_key"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 101
    :pswitch_4
    const-string v4, "cmmb_memsetspibuf_key"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 104
    :pswitch_5
    const-string v4, "cmmb_mts_key"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 107
    :pswitch_6
    const-string v4, "cmmb_mts_key"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 110
    :pswitch_7
    const-string v4, "cmmb_mbbms30_key"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 113
    :pswitch_8
    const-string v4, "cmmb_mbbms30_key"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 116
    :pswitch_9
    const-string v4, "EM_CMMB"

    const-string v5, "click internal btn"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v3, intentI:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.mediatek.cmmb.app"

    const-string v6, "com.mediatek.cmmb.app.FtmActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    iget-object v4, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "MODE"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v4, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    #getter for: Lcom/mediatek/engineermode/cmmb/CmmbActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/mediatek/engineermode/cmmb/CmmbActivity;->access$000(Lcom/mediatek/engineermode/cmmb/CmmbActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, freq:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    const-string v4, "FREQ"

    iget-object v5, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    #getter for: Lcom/mediatek/engineermode/cmmb/CmmbActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/cmmb/CmmbActivity;->access$000(Lcom/mediatek/engineermode/cmmb/CmmbActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    .end local v1           #freq:Ljava/lang/String;
    .end local v3           #intentI:Landroid/content/Intent;
    :pswitch_a
    const-string v4, "EM_CMMB"

    const-string v5, "click external btn"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v2, intentE:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.mediatek.cmmb.app"

    const-string v6, "com.mediatek.cmmb.app.FtmActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    iget-object v4, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 133
    const-string v4, "MODE"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v4, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;->this$0:Lcom/mediatek/engineermode/cmmb/CmmbActivity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f0b00d3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
