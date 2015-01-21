.class final Lcom/ctc/epush/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    const/4 v10, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->g(Lcom/ctc/epush/PushDialogActivity;)Lcom/ctc/epush/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ctc/epush/x;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->h(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v1}, Lcom/ctc/epush/PushDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5185\u5b58\u5361\u72b6\u6001="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->i(Lcom/ctc/epush/PushDialogActivity;)Ljava/lang/String;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->j(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->k(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Lcom/ctc/epush/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushDialogActivity;->finish()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long v5, v2, v0

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->h(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v0, 0x0

    move v3, v4

    move-wide v11, v0

    move-wide v1, v11

    :goto_2
    if-lt v3, v7, :cond_3

    cmp-long v0, v5, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->i(Lcom/ctc/epush/PushDialogActivity;)Ljava/lang/String;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->j(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->k(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Lcom/ctc/epush/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushDialogActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->f(Lcom/ctc/epush/PushDialogActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "isOpenWifiSetting"

    new-array v2, v10, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->l(Lcom/ctc/epush/PushDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v1}, Lcom/ctc/epush/PushDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->h(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-virtual {v0}, Lcom/ctc/a/a;->h()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v8

    add-long v0, v1, v8

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->b(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Lcom/ctc/epush/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->m(Lcom/ctc/epush/PushDialogActivity;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    const-class v2, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v1, v0}, Lcom/ctc/epush/PushDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/epush/u;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushDialogActivity;->finish()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method
