.class public Ltmsdkobf/jf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/jg;


# instance fields
.field private sX:Landroid/content/SharedPreferences;

.field private sY:Landroid/content/SharedPreferences$Editor;

.field private sZ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "encry"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/jf;->sX:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method

.method private getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltmsdkobf/jf;->sY:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Ltmsdkobf/jf;->sX:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/jf;->sY:Landroid/content/SharedPreferences$Editor;

    .line 42
    :cond_0
    iget-object v0, p0, Ltmsdkobf/jf;->sY:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 128
    invoke-direct {p0}, Ltmsdkobf/jf;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-boolean v1, p0, Ltmsdkobf/jf;->sZ:Z

    if-nez v1, :cond_0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 133
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bq(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 160
    invoke-direct {p0}, Ltmsdkobf/jf;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 138
    invoke-direct {p0}, Ltmsdkobf/jf;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-boolean v1, p0, Ltmsdkobf/jf;->sZ:Z

    if-nez v1, :cond_0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ltmsdkobf/jf;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 97
    invoke-direct {p0}, Ltmsdkobf/jf;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-boolean v1, p0, Ltmsdkobf/jf;->sZ:Z

    if-nez v1, :cond_0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defalut"

    .prologue
    .line 92
    iget-object v0, p0, Ltmsdkobf/jf;->sX:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 77
    iget-object v0, p0, Ltmsdkobf/jf;->sX:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 82
    iget-object v0, p0, Ltmsdkobf/jf;->sX:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 52
    iget-object v0, p0, Ltmsdkobf/jf;->sX:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
