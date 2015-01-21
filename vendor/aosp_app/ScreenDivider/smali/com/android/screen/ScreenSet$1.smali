.class Lcom/android/screen/ScreenSet$1;
.super Landroid/database/ContentObserver;
.source "ScreenSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/screen/ScreenSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screen/ScreenSet;


# direct methods
.method constructor <init>(Lcom/android/screen/ScreenSet;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/screen/ScreenSet$1;->this$0:Lcom/android/screen/ScreenSet;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    iget-object v1, p0, Lcom/android/screen/ScreenSet$1;->this$0:Lcom/android/screen/ScreenSet;

    invoke-virtual {v1}, Lcom/android/screen/ScreenSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ss_s_btn_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, value:I
    const-string v1, "AutoScreenDivider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS_S_BTN_ENABLED changed new Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/android/screen/ScreenSet$1;->this$0:Lcom/android/screen/ScreenSet;

    #getter for: Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/screen/ScreenSet;->access$000(Lcom/android/screen/ScreenSet;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    if-nez v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/screen/ScreenSet$1;->this$0:Lcom/android/screen/ScreenSet;

    #getter for: Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/screen/ScreenSet;->access$000(Lcom/android/screen/ScreenSet;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-ne v5, v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/screen/ScreenSet$1;->this$0:Lcom/android/screen/ScreenSet;

    #getter for: Lcom/android/screen/ScreenSet;->switcher:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/screen/ScreenSet;->access$000(Lcom/android/screen/ScreenSet;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
