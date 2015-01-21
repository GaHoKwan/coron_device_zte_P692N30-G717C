.class public Laed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/sohu/inputmethod/settings/InstallThemeService;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/InstallThemeService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iput-object p2, p0, Laed;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Laed;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lage;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    const-string v0, "handle install msg"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Laed;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 89
    iget-object v0, p0, Laed;->a:Landroid/content/Intent;

    sget-object v5, Lage;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v5, p0, Laed;->a:Landroid/content/Intent;

    sget-object v6, Lage;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    iget-object v6, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iget-object v7, p0, Laed;->a:Landroid/content/Intent;

    sget-object v8, Lage;->m:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  resolution = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Ljava/lang/String;)V

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  resolution = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laed;->a:Landroid/content/Intent;

    sget-object v8, Lage;->f:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Ljava/lang/String;)V

    .line 106
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v6, p0, Laed;->a:Landroid/content/Intent;

    sget-object v7, Lage;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 116
    const-string v7, ".ssf"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v1, :cond_6

    .line 125
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lazj;->a(Ljava/io/File;)Z

    .line 126
    new-instance v6, Ljava/io/File;

    sget-object v7, Laox;->d:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 128
    iget-object v6, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v6}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v0}, Lasb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 131
    iget-object v6, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v6}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v0}, Lasb;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 135
    :try_start_0
    sget-object v0, Laox;->z:Ljava/lang/String;

    invoke-static {v0}, Lavr;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 137
    sget-object v0, Laox;->z:Ljava/lang/String;

    sget-object v6, Laox;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lavr;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 156
    :goto_1
    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v5}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 161
    :goto_2
    if-nez v3, :cond_8

    move v0, v1

    .line 165
    :goto_3
    iget-object v5, p0, Laed;->a:Landroid/content/Intent;

    sget-object v6, Lage;->l:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iget-object v2, p0, Laed;->a:Landroid/content/Intent;

    sget-object v3, Lage;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iget-object v2, p0, Laed;->a:Landroid/content/Intent;

    sget-object v3, Lage;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Lcom/sohu/inputmethod/settings/InstallThemeService;Z)Z

    .line 173
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/os/Handler;

    new-instance v1, Laee;

    invoke-direct {v1, p0}, Laee;-><init>(Laed;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v2

    .line 148
    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 148
    goto :goto_1

    .line 152
    :cond_2
    sget-object v6, Laox;->d:Ljava/lang/String;

    invoke-static {v6, v0}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Lcom/sohu/inputmethod/settings/InstallThemeService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v1, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    sget-object v1, Lage;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    const-string v1, "install_theme_fail"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    :cond_4
    iget-object v1, p0, Laed;->a:Landroid/content/Intent;

    const-string v5, "INSTALL_FROM_EXTERNAL"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    iget-object v1, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iget-object v2, p0, Laed;->a:Landroid/content/Intent;

    const-string v3, "THEME_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v1, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/InstallThemeService;->a:Landroid/os/Handler;

    new-instance v2, Laef;

    invoke-direct {v2, p0}, Laef;-><init>(Laed;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sogou.action.install.theme.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    new-instance v1, Landroid/content/Intent;

    sget-object v5, Lage;->b:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v5, Lage;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    sget-object v5, Lage;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    sget-object v0, Lage;->f:Ljava/lang/String;

    iget-object v5, p0, Laed;->a:Landroid/content/Intent;

    sget-object v6, Lage;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    sget-object v0, Lage;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    sget-object v0, Lage;->p:Ljava/lang/String;

    iget-object v3, p0, Laed;->a:Landroid/content/Intent;

    sget-object v4, Lage;->p:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string v0, "     send broadcast intent result"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 234
    :cond_6
    if-ne v6, v1, :cond_7

    .line 235
    iget-object v1, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-static {v1, v3, v0, v5}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 242
    :goto_4
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lage;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    sget-object v2, Lage;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object v2, Lage;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    sget-object v0, Lage;->f:Ljava/lang/String;

    iget-object v2, p0, Laed;->a:Landroid/content/Intent;

    sget-object v3, Lage;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v0, "     send broadcast intent result"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/InstallThemeService;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/InstallThemeService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 238
    :cond_7
    iget-object v1, p0, Laed;->a:Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-static {v1, v3, v0, v5}, Lcom/sohu/inputmethod/settings/InstallThemeService;->b(Lcom/sohu/inputmethod/settings/InstallThemeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move v3, v4

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method
