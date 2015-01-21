.class public Lalx;
.super Lalg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lrr;

    iget-object v1, p0, Lalx;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalx;->a:Lrr;

    .line 27
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lalx;->a:Lrr;

    invoke-virtual {v0}, Lrr;->a()I

    move-result v0

    .line 32
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 33
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34
    sput v3, Lcom/sohu/inputmethod/sogou/SogouIME;->d:I

    .line 35
    iget-object v0, p0, Lalx;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lalx;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lafp;->r(Z)V

    .line 39
    iget-object v0, p0, Lalx;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v3, v0, Lamo;->u:Z

    .line 40
    iget-object v0, p0, Lalx;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lalx;->a:Landroid/content/Context;

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    :cond_0
    :goto_0
    sput-boolean v3, Lcom/sohu/inputmethod/sogou/SogouIME;->e:Z

    .line 53
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lalx;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->z()V

    goto :goto_0
.end method
