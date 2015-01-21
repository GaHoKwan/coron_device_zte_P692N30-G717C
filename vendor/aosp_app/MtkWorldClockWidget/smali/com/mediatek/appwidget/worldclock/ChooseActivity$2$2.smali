.class Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;
.super Ljava/lang/Object;
.source "ChooseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

.field final synthetic val$weatherName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

    iput-object p2, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->val$weatherName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 355
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

    iget-object v3, v3, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    const-string v4, "chooseshared"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 357
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "mtkworldclockchoose"

    const-string v4, "first"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, chooses:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->val$weatherName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "mtkworldclockchoose"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->val$weatherName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->val$weatherName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.mtk.worldclock.deleteIntent"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "weatherNameDelete"

    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->val$weatherName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

    iget-object v3, v3, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$2;->this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

    iget-object v3, v3, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    invoke-virtual {v3}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->onResume()V

    .line 378
    return-void
.end method
