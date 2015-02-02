.class Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;
.super Ljava/lang/Object;
.source "TsMultiTouch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iput-object p2, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 196
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->val$input:Landroid/widget/EditText;

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

    .line 205
    .local v2, sz:I
    if-ge v2, v5, :cond_1

    .line 206
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iput v5, v3, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    const-string v4, "touch_screen_settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 216
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "size"

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget v5, v5, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iget-object v3, v3, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mView:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$MyView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 221
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    .end local v2           #sz:I
    :cond_0
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 207
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #sz:I
    :cond_1
    if-le v2, v6, :cond_2

    .line 208
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iput v6, v3, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    goto :goto_0

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iput v2, v3, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->mPointSize:I

    goto :goto_0
.end method
