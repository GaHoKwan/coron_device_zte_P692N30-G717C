.class public Lcn/edu/ncwu/www/MPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MPreferenceActivity.java"


# static fields
.field private static final FLASH_OTA:I = 0x1

.field private static final OPEN_FILE:I


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private file:Ljava/io/File;

.field private flashOta:Landroid/preference/PreferenceScreen;

.field private recovery:Landroid/preference/PreferenceScreen;

.field private replaceRecovery:Landroid/preference/PreferenceScreen;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/edu/ncwu/www/MPreferenceActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "paramContext"
    .parameter "key"

    .prologue
    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    .line 109
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 126
    invoke-static {p0}, Lcn/edu/ncwu/www/tools/FileUtil;->fileWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "file"
    .parameter "key"

    .prologue
    .line 115
    invoke-static {p1}, Lcn/edu/ncwu/www/MPreferenceActivity;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p0, p2}, Lcn/edu/ncwu/www/MPreferenceActivity;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "1"

    invoke-static {p1, v0}, Lcn/edu/ncwu/www/tools/FileUtil;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    const-string v0, "0"

    invoke-static {p1, v0}, Lcn/edu/ncwu/www/tools/FileUtil;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 266
    return-void

    .line 196
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 197
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->file:Ljava/io/File;

    .line 199
    iget-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dd if="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string v3, " of=/dev/block/mmcblk0 seek=82688"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/edu/ncwu/www/tools/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 202
    const-string v2, "\u66f4\u6362\u6210\u529f"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_1
    const-string v2, "\u8bf7\u9009\u62e9\u955c\u50cf\u6587\u4ef6\uff0c\uff08.img\u7ed3\u5c3e\uff09"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, localOutputStream:Ljava/io/OutputStream;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->file:Ljava/io/File;

    .line 221
    iget-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 227
    const-string v2, "mkdir -p /cache/recovery/\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 229
    const-string v2, "echo \'boot-recovery\' >/cache/recovery/command\n"

    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \'--update_package="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' >> /cache/recovery/command\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 235
    const-string v2, "reboot recovery\n"

    .line 236
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 237
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    if-eqz v1, :cond_0

    .line 245
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 238
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 240
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    if-eqz v1, :cond_0

    .line 245
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 246
    :catch_2
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 243
    if-eqz v1, :cond_2

    .line 245
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 250
    :cond_2
    :goto_1
    throw v2

    .line 246
    :catch_3
    move-exception v0

    .line 248
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v2, "\u8bf7\u9009\u62e9\u5237\u673a\u5305\uff0c\uff08.zip\u7ed3\u5c3e\uff09"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-virtual {p0}, Lcn/edu/ncwu/www/MPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcn/edu/ncwu/www/MPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcn/edu/ncwu/www/MPreferenceActivity;->addPreferencesFromResource(I)V

    .line 60
    const-string v0, "flashOta"

    invoke-virtual {p0, v0}, Lcn/edu/ncwu/www/MPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->flashOta:Landroid/preference/PreferenceScreen;

    .line 61
    const-string v0, "recovery"

    invoke-virtual {p0, v0}, Lcn/edu/ncwu/www/MPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->recovery:Landroid/preference/PreferenceScreen;

    .line 62
    const-string v0, "replaceRecovery"

    invoke-virtual {p0, v0}, Lcn/edu/ncwu/www/MPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->replaceRecovery:Landroid/preference/PreferenceScreen;

    .line 104
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcn/edu/ncwu/www/MPreferenceActivity;->finish()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->recovery:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_1

    .line 143
    const-string v2, "\u91cd\u542f\u5230recovery"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u662f\u5426\u91cd\u542f\u5230recovery"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    const-string v3, "\u5426"

    new-instance v4, Lcn/edu/ncwu/www/MPreferenceActivity$3;

    invoke-direct {v4, p0}, Lcn/edu/ncwu/www/MPreferenceActivity$3;-><init>(Lcn/edu/ncwu/www/MPreferenceActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 151
    const-string v3, "\u662f"

    new-instance v4, Lcn/edu/ncwu/www/MPreferenceActivity$4;

    invoke-direct {v4, p0}, Lcn/edu/ncwu/www/MPreferenceActivity$4;-><init>(Lcn/edu/ncwu/www/MPreferenceActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 161
    :cond_1
    iget-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->replaceRecovery:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_2

    .line 163
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :try_start_0
    const-string v2, "\u8bf7\u9009\u62e9recovery.img"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 169
    const/4 v3, 0x0

    .line 167
    invoke-virtual {p0, v2, v3}, Lcn/edu/ncwu/www/MPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    goto :goto_0

    .line 174
    :cond_2
    iget-object v2, p0, Lcn/edu/ncwu/www/MPreferenceActivity;->flashOta:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    .line 176
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :try_start_1
    const-string v2, "\u8bf7\u9009\u62e9\u5237\u673a\u5305"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 182
    const/4 v3, 0x1

    .line 180
    invoke-virtual {p0, v2, v3}, Lcn/edu/ncwu/www/MPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v2

    goto :goto_0
.end method
