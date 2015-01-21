.class Lcom/android/mipop/b/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic aU:I

.field final synthetic aV:Z

.field final synthetic aW:Lcom/android/mipop/b/b;


# direct methods
.method constructor <init>(Lcom/android/mipop/b/b;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/b/d;->aW:Lcom/android/mipop/b/b;

    iput p2, p0, Lcom/android/mipop/b/d;->aU:I

    iput-boolean p3, p0, Lcom/android/mipop/b/d;->aV:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0xa

    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/android/mipop/b/d;->aW:Lcom/android/mipop/b/b;

    invoke-virtual {v1}, Lcom/android/mipop/b/b;->getKeyCode()I

    move-result v1

    const-string v2, "wxl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wxl back keycodeId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    iget v0, p0, Lcom/android/mipop/b/d;->aU:I

    if-ne v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/android/mipop/b/d;->aV:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/b/d;->aW:Lcom/android/mipop/b/b;

    invoke-static {v0}, Lcom/android/mipop/b/b;->a(Lcom/android/mipop/b/b;)V

    :cond_0
    :goto_0
    const-string v0, "shenzhan"

    const-string v1, "Back implement"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mipop/b/d;->aU:I

    if-ge v0, v5, :cond_0

    sget-object v0, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mipop_click_times"

    iget v2, p0, Lcom/android/mipop/b/d;->aU:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "shenzhan"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
