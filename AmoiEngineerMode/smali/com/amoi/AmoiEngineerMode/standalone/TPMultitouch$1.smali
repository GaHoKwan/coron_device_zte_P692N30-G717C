.class Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;
.super Ljava/lang/Object;
.source "TPMultitouch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->val$input:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 161
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_2

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 170
    .local v2, sz:I
    if-ge v2, v5, :cond_0

    .line 171
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iput v5, v3, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    const-string v4, "touch_screen_settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "size"

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iget v5, v5, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->v:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;

    invoke-virtual {v3}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->invalidate()V

    .line 191
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    .end local v2           #sz:I
    :goto_1
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 172
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #sz:I
    :cond_0
    if-le v2, v6, :cond_1

    .line 173
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iput v6, v3, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    goto :goto_0

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    iput v2, v3, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    goto :goto_0

    .line 189
    .end local v2           #sz:I
    :cond_2
    const-string v3, "MTXXS"

    const-string v4, ">>>>>>>>>>>>>>DIALOG edit null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
