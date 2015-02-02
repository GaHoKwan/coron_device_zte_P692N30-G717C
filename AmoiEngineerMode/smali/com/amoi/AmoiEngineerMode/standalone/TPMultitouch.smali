.class public Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;
.super Landroid/app/Activity;
.source "TPMultitouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;
    }
.end annotation


# static fields
.field public static final ClearCanvas_ID:I = 0x1

.field public static final DisplayHistory_ID:I = 0x3

.field public static final SetPtSize_ID:I = 0x2


# instance fields
.field volatile mDisplayHistory:Z

.field public mPointSize:I

.field me:Landroid/util/DisplayMetrics;

.field v:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->v:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;

    .line 34
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mDisplayHistory:Z

    .line 35
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->me:Landroid/util/DisplayMetrics;

    .line 37
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    .line 200
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->requestWindowFeature(I)Z

    .line 48
    new-instance v0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;

    invoke-direct {v0, p0, p0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->v:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 114
    const-string v0, "Clean Table"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 115
    const/4 v0, 0x2

    const-string v1, "Set Point Size"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 117
    const/4 v0, 0x3

    const-string v1, "Hide History"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 119
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mi"

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->v:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->Clear()V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mDisplayHistory:Z

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mDisplayHistory:Z

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->v:Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$MyView;->invalidate()V

    goto :goto_0

    .line 143
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mDisplayHistory:Z

    goto :goto_1

    .line 151
    :pswitch_2
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, input:Landroid/widget/EditText;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Insert pixel size of point [1-10]"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;

    invoke-direct {v3, p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch$1;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 83
    const-string v5, "MTH"

    const-string v6, "onPause"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v5, "touch_screen_settings"

    invoke-virtual {p0, v5, v8}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 86
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "filename"

    const-string v6, "N"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, file:Ljava/lang/String;
    const-string v5, "N"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v8

    const-string v5, "-c"

    aput-object v5, v0, v7

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo [LEAVE_MULTI_TOUCH] >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 93
    .local v0, cmd:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v4

    .line 94
    .local v4, ret:I
    if-nez v4, :cond_1

    .line 95
    const-string v5, "Stop logging..."

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v4           #ret:I
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    return-void

    .line 98
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v4       #ret:I
    :cond_1
    :try_start_1
    const-string v5, "Logging failed!"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MTH"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x2

    .line 125
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mDisplayHistory:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "Hide History"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 128
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "Show History"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 54
    const-string v5, "MTH"

    const-string v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v5, "touch_screen_settings"

    invoke-virtual {p0, v5, v8}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 57
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "filename"

    const-string v6, "N"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, file:Ljava/lang/String;
    const-string v5, "N"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v8

    const-string v5, "-c"

    aput-object v5, v0, v7

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo [ENTER_MULTI_TOUCH] >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 64
    .local v0, cmd:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v4

    .line 65
    .local v4, ret:I
    if-nez v4, :cond_1

    .line 66
    const-string v5, "Start logging..."

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v4           #ret:I
    :cond_0
    :goto_0
    const-string v5, "size"

    const/16 v6, 0xa

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->mPointSize:I

    .line 78
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;->me:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    return-void

    .line 69
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v4       #ret:I
    :cond_1
    :try_start_1
    const-string v5, "Logging failed!"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MTH"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
