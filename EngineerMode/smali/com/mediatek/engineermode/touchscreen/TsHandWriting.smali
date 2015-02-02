.class public Lcom/mediatek/engineermode/touchscreen/TsHandWriting;
.super Landroid/app/Activity;
.source "TsHandWriting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;,
        Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;
    }
.end annotation


# static fields
.field public static final CLEAR_CANVAS_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EM/TouchScreen/HW"


# instance fields
.field mView:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;

.field private mZoom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mView:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mZoom:I

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mZoom:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mZoom:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "EM/TouchScreen/HW"

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 82
    new-instance v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;-><init>(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mView:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mView:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 84
    const-string v0, "EM/TouchScreen/HW"

    const-string v1, "onCreate success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    const-string v0, "Clean Table."

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 152
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mi"

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mView:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->clear()V

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 121
    const-string v5, "EM/TouchScreen/HW"

    const-string v6, "-->onPause"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v5, "touch_screen_settings"

    invoke-virtual {p0, v5, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "filename"

    const-string v6, "N"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, file:Ljava/lang/String;
    const-string v5, "N"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v8

    const-string v5, "-c"

    aput-object v5, v0, v7

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo [LEAVE_HAND_WRITING] >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 132
    .local v0, cmd:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, ret:I
    if-nez v4, :cond_1

    .line 134
    const-string v5, "Stop logging..."

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v4           #ret:I
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    return-void

    .line 137
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

    .line 140
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/io/IOException;
    const-string v5, "EM/TouchScreen/HW"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    const-string v5, "touch_screen_settings"

    invoke-virtual {p0, v5, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 94
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "filename"

    const-string v6, "N"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, file:Ljava/lang/String;
    const-string v5, "N"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v8

    const-string v5, "-c"

    aput-object v5, v0, v7

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo [ENTER_HAND_WRITING] >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 102
    .local v0, cmd:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v4

    .line 103
    .local v4, ret:I
    if-nez v4, :cond_1

    .line 104
    const-string v5, "Start logging..."

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 116
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v4           #ret:I
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v4       #ret:I
    :cond_1
    const-string v5, "Logging failed!"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/io/IOException;
    const-string v5, "EM/TouchScreen/HW"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
